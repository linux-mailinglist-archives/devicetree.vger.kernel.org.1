Return-Path: <devicetree+bounces-223810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CECCBBDAEB
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 12:25:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B9233A57E1
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 10:25:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86B48231858;
	Mon,  6 Oct 2025 10:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FhcZ85ZC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB1A2367D2
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 10:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759746324; cv=none; b=jlBYZpbLCuD4788fin3CSFTbDv4RtUlM3F36ZA2bpLQQS7OqI4by4QW5ib4kVhfQXfcYBOiUXlz9cMNi1bV48d0Dw0d+AEn/CzVCQv9Q3ZXY5E1t0eLSFHrCbjgH5vt0yBXYQhoOp1essu6lm+PWVgpid43JWHZQ6OM96Fo+KCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759746324; c=relaxed/simple;
	bh=UJQ7ATeIZKqg+H6Nc/MG5lNeEF4JIpt4M+nHiSy6knk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CPv871lEPinXrDqdYL74B7wDmemU3HvbWPmp1tCLTUpaG4ENn6QfbpF3gxOx4j47CL0Eh2Qc+eevKB7fkdGR7bg7CVxyiQxUyNa4QaUS9JkpjL55mVpJayDwu3Si6lAfOYCn8oLbIeYBK3RoG36eaAaB3iL+UaqF76FINLYT1eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FhcZ85ZC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595J9pLD030354
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 10:25:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HBDnqR+G9iEwaHQ+SA6dOyDlxOy5jo2xatcpOEfaBqk=; b=FhcZ85ZCtkGl8qlM
	+BxR0U0WgNixSZ9oEEx+2uL9PgGDMIsVdRr9e5uJb+CCTSFGA8w/6KZyCE3l+xPC
	9kqtdR6Vw2nSYJT1epHyPozlbUiWVXmpRsfYcbOb0w6L7oZ9Cv4d2ypJYBijc1Gg
	xh/vR5o5o/FrtbTmOdvYRrIDuSD4mdf3j0L17E8LscjU0sceI5bxz/2ABFul1Z4y
	4VIYwNIyRdILSNmAjpIj2eB2874XZfJAiXkTThaHx4pZFwRvGWvNv3l+E2703r8E
	0pFPBeyfS8h519Fnuzk4oWTkDXNK9BpBxolZUhWOibmvjfacYB764zakstpQ5GHy
	ISAVXA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49ju5xbjw1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:25:21 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7958a07a5fdso17159846d6.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 03:25:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759746310; x=1760351110;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HBDnqR+G9iEwaHQ+SA6dOyDlxOy5jo2xatcpOEfaBqk=;
        b=CvzRwKheIebekg+oE0HVAjSiCjD/+6XJlSVjfoWDynmISjHHj85JbyxU0UL7GNDAT/
         QizP1ctQNjD0Nw6WqV/KPzMQZk1QF5UlZHBBrsv9Y/fDur/bqF7Q8AfdNXrM44ye37WC
         ypw/ESvQtvpCA8gMPQMg8wMR9verv9jnc1QNibJeRFG2JIEInDl8fAF5arfs39AQnllr
         ABKFsaC3OpI42Hidv/tjzGsP2UBXHmj2aTTlsQoSoxZBJlbW84W9r5Sx3LXmKVICdX+Q
         04e3tqUa90GpU7SEm9tOXOkjx1F9Ru447kgz5AhElzyqVUhwjSh5E4P0h/vl9OytKzzC
         QtEA==
X-Forwarded-Encrypted: i=1; AJvYcCWcE+aDXE+P8Ge/9z+S3yyKL8VctqigYq2IlWvtTB0bY8ksuDXZGRkZIH21pO0pCBZYcewUsqbtvRzh@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+h4qcMHTTDg2uvaHKOl4TF0vsVPrbpXIdKE9uWGAxxKQkbfj9
	r5Ht6jjN6u8H70qsgHhL+x36iWK/Z1HwFzIsQiEglXzSppNNWXvSzbLVKL7k3CtqRUfNXxbI/5p
	WUxrU2hW46IZhhJCKhHkZZMCSsUThL0PLE/6oTAYifomkuZVVl7dSTfhxH34zobgN
X-Gm-Gg: ASbGncsaqC97tP7+W5PfPfwiUnbzg4IESMd8Fb7NtAXqc+T1un0pxEYDEZ/a85dqbb0
	5FDCaKtzJOdSklvU2eD5dK4J52WGmm2DQohjxOCFaPAR3NgnX7yDquBzr0bAt/njyeZMby6XN5Q
	dkd4UL/Ldbc/OoEWrZONFp881Y6z0rf+c/eIwemUMMcwD3mykvK3ZuiucXvWKDY7sGdBD9g3M3L
	xJmOBm4f+40EEjWz9LcbJIul8Xv70DlFHCm7XA/vmbaWMYEiQ2YlcfL78RGKPu4y7Oept7aZzpf
	ULGNkq/Sbk49fa0+QGkimRBgubaoZVtwMFzqcyhkFzJXpFXQ0DwOOYOo81W+XRPz8o+pvsmQyt/
	H9SxEwvNSmUhkPL+jmtixggWiGIk=
X-Received: by 2002:a05:6214:20a3:b0:763:83c3:5977 with SMTP id 6a1803df08f44-879dc7875eemr104493376d6.2.1759746309763;
        Mon, 06 Oct 2025 03:25:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAsA2+8LmsPWiW3AgLrAN4zG8ewGH8WJ0c21RL7gCTD0Oc50rVsz4UkK95aBRsmX1q0+0njA==
X-Received: by 2002:a05:6214:20a3:b0:763:83c3:5977 with SMTP id 6a1803df08f44-879dc7875eemr104493176d6.2.1759746309238;
        Mon, 06 Oct 2025 03:25:09 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3ad614sm9765621a12.1.2025.10.06.03.25.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 03:25:08 -0700 (PDT)
Message-ID: <38416f73-9570-4f01-b179-cb653a874b69@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 12:25:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-3-86a14e8a34ac@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-3-86a14e8a34ac@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=FooIPmrq c=1 sm=1 tr=0 ts=68e39911 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=b4hOb4oQgmsngjji8b4A:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: DlzDLrNsB6MlKPVbbtCH3X-mL6baVguX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMiBTYWx0ZWRfX655NUk/G/2xU
 v4OmQq3/trBXQdkseOSIfN6NXKqD9iTymVlIjgVEgrI/mNFD9kB4rSAnqOZfZj/SCDPU69JvKRW
 lcJWbOyQJMQq70cza5Rq1dl/J5m/rLjFrkLKGkuWpfClHjQSqN4Q3BXqMqimnQCBNdNWEJHYjYI
 bxle0Xu9c3XHrcFS5WdtUqYPOg3GWdRFLyUynGdkjHQYIncOXFEeB+VYhJDvlSo+rTKW4G4gzFS
 QeZkT9by3isgnDeuFwGMbpfF9tATeO0kwixO7wsziSrIsYzJimNGTt7mgp4mJuuGMDWSG8r1fHO
 qc6M9NtRcpzQ5sTYPbmA3kwn6F87OyMmVU0XTG74W1+H+/KHOomL/u9BdjwiJxao/RsjsFuXOMu
 G8HBIgPABg/bad1Pkyc2gstKg0nHsA==
X-Proofpoint-GUID: DlzDLrNsB6MlKPVbbtCH3X-mL6baVguX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040022

On 9/30/25 9:39 AM, Neil Armstrong wrote:
> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> connected to the third QMP Combo PHY 4 lanes.
> 
> Add all the data routing, disable mode switching and specify the
> QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
> the underlying DP phy.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

[...]

> +&usb_1_ss2_qmpphy {
> +	vdda-phy-supply = <&vreg_l2j_1p2>;
> +	vdda-pll-supply = <&vreg_l2d_0p9>;
> +
> +	/delete-property/ mode-switch;
> +	/delete-property/ orientation-switch;
> +
> +	status = "okay";
> +
> +	ports {
> +		port@0 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			/delete-node/ endpoint;
> +
> +			usb_1_ss2_qmpphy_out_dp: endpoint@0 {
> +				reg = <0>;
> +
> +				data-lanes = <3 2 1 0>;
> +				remote-endpoint = <&hdmi_bridge_dp_in>;
> +			};
> +
> +			/* No USB3 lanes connected */
> +		};
> +	};
> +};
> +
>  &usb_1_ss1_hsphy {

You have to move your _ss*2*_ node below the _ss*1*_ nodes

otherwise:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

