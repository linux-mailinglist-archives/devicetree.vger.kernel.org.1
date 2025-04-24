Return-Path: <devicetree+bounces-170420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B33A9AB72
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 13:10:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 199CC1944968
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 11:11:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99BEA224239;
	Thu, 24 Apr 2025 11:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W1sDJeMk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB05D221FAA
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 11:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745493052; cv=none; b=rCFWTKr1pBNzc6psmfygNsCw7Q3JLmWcR2PM1XuXRVlniZ4cwqSpXkDm7clt1l4qz14U0kO6EYDjmEkVBRqQiYfOdHyxmTkUswwji22lTvehSZH+Enkb73b36/AygH1FMV4WNfyQO7OUtO5Zfy5J5wgKDY8s8pqMrJ9IMGZZvqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745493052; c=relaxed/simple;
	bh=vHlM7vyyhvHO69IvXPugtFCtr96bxOcLbYznJ/LXqxQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bFBGEHkrpZcMEHnzO1uaY7k2w3zNDzcDKpWc1UYk++yjWOAfUr6KMSB0YR9Wg1/7JxU74CWp1i3nMHbX2Ah1Pa31gEkwVsDMv9WHijJrkTpEfpuG9FEd0qKD6SOmaUwQ2BJnYdcQ/JxigH0TNqVzV/RADtg6MCtpm5ycr561xoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W1sDJeMk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53OA87DY010223
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 11:10:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SbXkZiQgoCeol6j703bkn3BaF0gN+b66VO3cL6uNuA8=; b=W1sDJeMkeeGJXqJO
	Q0V5h5Wq/x3Mmm87v5ouH/9p2pYIVCjPcN9BVgpehGBCpRNoKUB3AFRE5vYxK4WF
	wHq0pa89xsBaj0XK4s3b+nWqoIjSGU6M7tFrusLwQ9iTcOS2x3cLnC3u3SKd5qcW
	3gUsrgrDI7vNpvcGlCPz+zEzn5ZIJnFXRSBiybIYBE0dMqNq6qeEKG2uqgxWnLbZ
	zoAIM+LDJVPGY7Ibd4TSsZvzk2RaVszqIakZPSW3e8wyDexcmF+zrmumTzzmdZHX
	MCZnOy+uiWySiRZESlo18c19oI7y8kx3BfRgRNve+KkOaWOC+nr/4iXfE4KCLbht
	vLKw8g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3naa1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 11:10:49 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c955be751aso145318285a.2
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 04:10:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745493035; x=1746097835;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SbXkZiQgoCeol6j703bkn3BaF0gN+b66VO3cL6uNuA8=;
        b=anheKgT6Bto+de0WmWNOa14JWJfAyHKcb3cb4bhICl524kKA3nqNcu7uM4autI59b5
         fZfeCA1t7weOQADi2vgpQ8vZunw3omJmdjMqR/+nr+dosvrFcJC75GR7TxwB79ZOHjQc
         iYJaXT7lZjAFxBylw/TAhyiTNFLZL5YCFpKehVOOwvzqelEZhaLwLPFM0FqsHjo/F0RC
         CYL3Ht/g8n6/OEIqdSWBoAjH21Eta9IOWJmDbzPsi8pwZNvtWNqHwQRFCyx828wPFLI4
         KCntnJinPpWadzO0nw1nvM6lgbizuPtHbDiQGmGNvrcm47scFL7f0q5pD6TGfI3T9BHf
         xqlA==
X-Forwarded-Encrypted: i=1; AJvYcCWE/NwR78KfllOSVkqd2KOzJdsbtDmFUVImI6Sdi2eFPpmSuSDfLEDLGOI75Bw6taag2UpdNHhs2hdS@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj/wSQmu2fB47IHeQ64Rkv2VVqwOtZGH/jIMYt7/n0QDqYw6cC
	s1pimUfJAUVBA1SfWvWm7xjZLHzvtHgztfzbvYwDQj8JXpCTKDBwXdbjYUB8BDp/CyGj9llrDFp
	ax/2/HBKIHo4m/elEkhl7SVBge5zh9N03LLRQbWQS4qyFUg0zTN/+GdUN9mBy
X-Gm-Gg: ASbGnct9Vtp+OmKP4LtJ8Mz/d2LoKaOifESKVBGmu5ptdzhQ3AkwBssRWLGfh5jrCZe
	QWZsrptXzSeTLqG49osLjypoXbLO0aRFVQ7KNcp2I8ZHVmN9tmfC+NzVZ/FMnNN6EveWqOtzJ78
	5zHQWumbggPQQjlpBGrdaVW57u2fPOpJWhjzfRFcpSjt1bw9FO7KRnJtSIkCWtKsm2fAViy3bfY
	FBWLJReg/EIp8O9VkDhIDguTSCyhufXar7wsLqQENkwE2w3iRmyJYtuqvbgt+z/f7h+eX2vAApG
	euT8AG/SHl+KOS9uzc935bBj2DqlP/es9Np0FjMSPrmU47ZXVdQVbGvnks/XG8t3fQByFGhl77g
	=
X-Received: by 2002:a05:620a:2890:b0:7c0:be39:1a34 with SMTP id af79cd13be357-7c956f32b80mr335217485a.43.1745493035178;
        Thu, 24 Apr 2025 04:10:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEIWSfSeagQCMxeexreJGiDfdJOejTbjRJi9VCGDNZjfVdsS5Ak1Wfu+3rMCEHoHHhMDdWtg==
X-Received: by 2002:a05:620a:2890:b0:7c0:be39:1a34 with SMTP id af79cd13be357-7c956f32b80mr335213485a.43.1745493034794;
        Thu, 24 Apr 2025 04:10:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb2627asm202514e87.16.2025.04.24.04.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 04:10:32 -0700 (PDT)
Date: Thu, 24 Apr 2025 14:10:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>, linux-kernel@vger.kernel.org,
        patches@lists.linux.dev, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee@kernel.org>, Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>, chrome-platform@lists.linux.dev,
        Pin-yen Lin <treapking@chromium.org>,
        Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
        =?utf-8?Q?=C5=81ukasz?= Bartosik <ukaszb@chromium.org>,
        Jameson Thies <jthies@google.com>,
        Andrei Kuchynski <akuchynski@chromium.org>
Subject: Re: [PATCH 5/7] dt-bindings: usb: google,cros-ec-typec: Add ports
 for DP altmode
Message-ID: <air5bftw42xfc3ikm3zmcd2u7jwjya3wkqgw6ojjpf3v6q2d4y@djmxtnhzosed>
References: <20250416000208.3568635-1-swboyd@chromium.org>
 <20250416000208.3568635-6-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250416000208.3568635-6-swboyd@chromium.org>
X-Proofpoint-ORIG-GUID: 5nWcr0LqHLqQ7eprNlG8xqUxkj_pjwD6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA3NSBTYWx0ZWRfXxTaXEzqukND6 mNqZxDWceZJRGEaGKJocCUka8GvYyM0Zhcrey5TgP6JOfVP4dOsfNiUnEAZOtSdcgsyW9QDqkqn 8QyITw1SMzHv0t6Vd/uSvg1JMq+jOcVJWeRFN3pj1PA3f0GmBLVV8I5YTpZjkw+yB2EUqbdk6+M
 sv9Bu1XQnNHmYfN8d+3cn+K5mwKEIiKUxXaXIjUCrqrncWX7hrkcXEUeffgrVLuRpwwXeWPKlR+ ofqyZNfrdPyhejoAgS3NoMzcZp5pLZ/yYg8Ogi+mR/kD0KP+dzoGExo0mkZUuAYeVH9KTF4js9z 8OOAcLZMmEw3k0knRP7rjdNviL/wASwK7/A9qVPcRiON/wvB8MN2xujJrc4hBQ8hr4MymEyRAKS
 3GCinMpw/+2ZjZqUqHasLYq40CQcIwIw3ysSdSFXYcw9Najlj0j4CjSw5cMesU914MGDoaU6
X-Authority-Analysis: v=2.4 cv=ELgG00ZC c=1 sm=1 tr=0 ts=680a1c39 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=cm27Pg_UAAAA:8 a=1XWaLZrsAAAA:8 a=xgO1mOz0IQAmAFag51MA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 5nWcr0LqHLqQ7eprNlG8xqUxkj_pjwD6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_05,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240075

On Tue, Apr 15, 2025 at 05:02:05PM -0700, Stephen Boyd wrote:
> Add a DT graph binding to google,cros-ec-typec so that it can combine
> DisplayPort (DP) and USB SuperSpeed (SS) data into a USB type-c endpoint
> that is connected to the usb-c-connector node's SS endpoint. Allow there
> to be multiple 'typec' nodes underneath the EC node so that one DT graph
> exists per DP bridge. The EC is actually controlling TCPCs and redrivers
> that combine the DP and USB signals together so this more accurately
> reflects the hardware design without introducing yet another DT node
> underneath the EC for USB type-c "stuff".
> 
> If the type-c ports are being shared between a single DP controller then
> the ports need to know about each other and determine a policy to drive
> DP to one type-c port or the other. If the type-c ports each have their
> own dedicated DP controller then they're able to operate independently
> and enter/exit DP altmode independently as well. We can't connect the DP
> controller's endpoint to one usb-c-connector port@1 endpoint and the USB
> controller's endpoint to another usb-c-connector port@1 endpoint either
> because the DP muxing case would have DP connected to two
> usb-c-connector endpoints which the graph binding doesn't support.
> 
> Therefore, one typec node is required per the capabilities of the type-c
> port(s) being managed. Add a port to the DisplayPort altmode as well, so
> that we can show the connection between the DP controller and the DP
> altmode. This lets us indicate which type-c ports the DP controller is
> wired to. For example, if DP was connected to ports 0 and 2, while port
> 1 was connected to another DP controller we wouldn't be able to
> implement that without having some other DT property to indicate which
> output ports are connected to the DP endpoint.
> 
> Furthermore, this supports ChromeOS designs like Corsola where a DP
> controller/PHY is split with two lanes going to one connector and the
> other two lanes going to another connector. In this case, we wouldn't
> have the graph binding under the cros-ec-typec node, but we would have
> the graph binding in the DP altmode directly connected to the DP
> controller's two output endpoints.
> 
> Cc: Rob Herring (Arm) <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Acked-by: Lee Jones <lee@kernel.org>
> Cc: Benson Leung <bleung@chromium.org>
> Cc: Guenter Roeck <groeck@chromium.org>
> Cc: Tzung-Bi Shih <tzungbi@kernel.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: <chrome-platform@lists.linux.dev>
> Cc: Pin-yen Lin <treapking@chromium.org>
> Cc: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
> Cc: Łukasz Bartosik <ukaszb@chromium.org>
> Cc: Jameson Thies <jthies@google.com>
> Cc: Andrei Kuchynski <akuchynski@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  .../bindings/connector/usb-connector.yaml     |   6 +
>  .../bindings/mfd/google,cros-ec.yaml          |   7 +-
>  .../bindings/usb/google,cros-ec-typec.yaml    | 165 ++++++++++++++++++
>  3 files changed, 175 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> index 11e40d225b9f..e3d60997c03e 100644
> --- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
> +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> @@ -179,6 +179,12 @@ properties:
>              $ref: /schemas/types.yaml#/definitions/uint32
>              description: VDO returned by Discover Modes USB PD command.
>  
> +          port:
> +            $ref: /schemas/graph.yaml#/properties/port
> +            description: OF graph bindings modeling a data bus to the
> +              DisplayPort altmode from the DisplayPort controller. Used when
> +              the altmode switch is part of the port manager.

Well......

> +
>    port:
>      $ref: /schemas/graph.yaml#/properties/port
>      description: OF graph bindings modeling a data bus to the connector, e.g.
> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> index ac89696fa649..63d506e88abb 100644
> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> @@ -98,9 +98,6 @@ properties:
>  
>    gpio-controller: true
>  
> -  typec:
> -    $ref: /schemas/usb/google,cros-ec-typec.yaml#
> -
>    ec-pwm:
>      $ref: /schemas/pwm/google,cros-ec-pwm.yaml#
>      deprecated: true
> @@ -163,6 +160,10 @@ patternProperties:
>      type: object
>      $ref: /schemas/extcon/extcon-usbc-cros-ec.yaml#
>  
> +  "^typec(-[0-9])*$":
> +    type: object
> +    $ref: /schemas/usb/google,cros-ec-typec.yaml#
> +
>  required:
>    - compatible
>  
> diff --git a/Documentation/devicetree/bindings/usb/google,cros-ec-typec.yaml b/Documentation/devicetree/bindings/usb/google,cros-ec-typec.yaml
> index 3272d0e01f7e..611345bbe884 100644
> --- a/Documentation/devicetree/bindings/usb/google,cros-ec-typec.yaml
> +++ b/Documentation/devicetree/bindings/usb/google,cros-ec-typec.yaml
> @@ -26,6 +26,55 @@ properties:
>    '#size-cells':
>      const: 0
>  
> +  mux-gpios:
> +    description: GPIOs indicating which way the DisplayPort mux is steered
> +    minItems: 1
> +    maxItems: 3
> +
> +  no-hpd:
> +    description: Indicates this device doesn't signal HPD for DisplayPort
> +    type: boolean
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Port for DisplayPort (DP) data
> +
> +        properties:
> +          endpoint@0:
> +            $ref: /schemas/graph.yaml#/properties/endpoint
> +            description: Input DP port
> +
> +        patternProperties:
> +          '^endpoint@[1-8]$':
> +            $ref: /schemas/graph.yaml#/properties/endpoint
> +            description: Output to the usb-c connector's DP altmode
> +
> +        required:
> +          - endpoint@0
> +
> +        anyOf:
> +          - required:
> +              - endpoint@1
> +          - required:
> +              - endpoint@2
> +          - required:
> +              - endpoint@3
> +          - required:
> +              - endpoint@4
> +          - required:
> +              - endpoint@5
> +          - required:
> +              - endpoint@6
> +          - required:
> +              - endpoint@7
> +          - required:
> +              - endpoint@8
> +
>  patternProperties:
>    '^connector@[0-9a-f]+$':
>      $ref: /schemas/connector/usb-connector.yaml#
> @@ -35,10 +84,30 @@ patternProperties:
>  required:
>    - compatible
>  
> +allOf:
> +  - if:
> +      required:
> +        - no-hpd
> +    then:
> +      properties:
> +        ports:
> +          required:
> +            - port@0
> +  - if:
> +      required:
> +        - mux-gpios
> +    then:
> +      properties:
> +        ports:
> +          required:
> +            - port@0
> +
>  additionalProperties: false
>  
>  examples:
>    - |+
> +    #include <dt-bindings/gpio/gpio.h>
> +
>      spi {
>        #address-cells = <1>;
>        #size-cells = <0>;
> @@ -47,6 +116,8 @@ examples:
>          compatible = "google,cros-ec-spi";
>          reg = <0>;
>          interrupts = <35 0>;
> +        #gpio-cells = <2>;
> +        gpio-controller;
>  
>          typec {
>            compatible = "google,cros-ec-typec";
> @@ -54,12 +125,106 @@ examples:
>            #address-cells = <1>;
>            #size-cells = <0>;
>  
> +          mux-gpios = <&cros_ec 42 GPIO_ACTIVE_HIGH>, <&cros_ec 3 GPIO_ACTIVE_HIGH>;
> +
>            connector@0 {
>              compatible = "usb-c-connector";
>              reg = <0>;
>              power-role = "dual";
>              data-role = "dual";
>              try-power-role = "source";
> +
> +            altmodes {
> +              displayport {

Should there be an svid / vdo definition?

> +                port {
> +                  usbc0_dp: endpoint {
> +                    remote-endpoint = <&dp_out0>;
> +                  };

I think this is slightly incorrect. The lanes from the DP mux inside the
EC are routed to the SS part of the USB-C connector. As such...

> +                };
> +              };
> +            };
> +
> +            ports {
> +              #address-cells = <1>;
> +              #size-cells = <0>;
> +
> +              port@0 {
> +                reg = <0>;
> +                usb_c0_hs: endpoint {
> +                  remote-endpoint = <&usb_hub_dfp3_hs>;
> +                };
> +              };
> +
> +              port@1 {
> +                reg = <1>;
> +                usb_c0_ss: endpoint {
> +                  remote-endpoint = <&usb_hub_dfp3_ss>;
> +                };

This should be more like

              port@1 {
                reg = <1>;
                #address-cells = <1>;
                #size-cells = <0>;

                usb_c0_ss: endpoint@0 {
                  reg = <0>;
                  remote-endpoint = <&usb_hub_dfp3_ss>;
                };

                usbc0_dp: endpoint@1 {
                  reg = <1>;
                  remote-endpoint = <&dp_out0>;
                };
              };

Would it make the driver significantly more complicated?

-- 
With best wishes
Dmitry

