Return-Path: <devicetree+bounces-269021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEDpETLfoGk4nwQAu9opvQ
	(envelope-from <devicetree+bounces-269021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 01:02:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6091B11A3
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 01:02:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 98DBB30338B3
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 00:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2739581732;
	Fri, 27 Feb 2026 00:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jp7co2Ja";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YIOjveMW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB11AD27E
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772150574; cv=none; b=KlItSYFGmxLVOkVbW82R8iqxuJd+Pd2pjUHldDxPRNcnnhnON2oN9KXp1ohrxBBPHIBnXe8+OCweEIlaYp57a3Qf7i/bj0ySgrverTJkoaJrkMqfHA1+G3VoXE8uK2ycO3sFjBEbdLS3kD00RgiAWFPKQJh6UaSnarGnpwZTuDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772150574; c=relaxed/simple;
	bh=1V4+ugPsUDiCint1ON0JSRwE50jP7mFssMgM8TXPy5Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NvKWuJxPF+P3bAnNwquBTULksXmjkl3CCCqyp2BuC2+hiqFNq5LZsbN1BC/OC24kWcbVh9vzQxxE1rqIVNpTFHPb8J8tgbbjFVPGSqSPSCc8b/8XGB8SqmTfZt30WmBuk/NgxplJssK6LAWN9tWrwZoZHCKfsXN4AHxlWWThfPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jp7co2Ja; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YIOjveMW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61QMag4b1889115
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:02:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PK/RwDGn4rhcIXcaiN1UQUqn
	A1S4gUEA0ozjE3RGi4w=; b=Jp7co2JacHhBOLx3VTLWueUTYZ7e7X9M5Mdyq8ti
	ToVc8lRkpX+GKZpmrdcskxAnTBFuV/uA5G9g+n2C4E3Gw+zeCeB1+buszFjHT809
	mgvgqdChhEtZ0wmYFyYAyjQMTOPo3SLtNQiCsYyyONlwqJWNsINgNI7mHKDGFDr8
	zYzbEPA7Z1fonS4oSY4zyzRglv7kBGPdY+jGT6ldNOUl5XDDrzhBRdoOHveZYdaP
	/ufuW2JPnOK85BKZw4ZsJ5MNlxP9Mi352iUNc6KSTQw0ojuBPYBqJ5SmDc/x6Rw7
	rQuKoL33fh2i3vwe6Hj/BMAy7kt/gVwoNdhmcpfHeGaDHA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjm8u2mwj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:02:51 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8954c8b3d61so164185536d6.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772150571; x=1772755371; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PK/RwDGn4rhcIXcaiN1UQUqnA1S4gUEA0ozjE3RGi4w=;
        b=YIOjveMWrOQqsWkhDLcUERCXaL3L6Yuli6Gv17JpIgu1CZ3akHKniK9lZ+WMmrz7XY
         4ky4zcfuci8aelct9jCq2yA1DzFpBJ2DYlOlTsqtCDHOV7s2i1FMYV19ZNR1hKSJPmVB
         /+N8FdSkL/5+dwH1TwdO+pfwaFuO5bu3o1rza5BSzcrPfBOpzirAEgaYjASluRkDhZ3M
         hW5TxKQK6+CY65msDE62UkPPTKA2QOxpYLI/wzdaxSoSzD100gKvnRTHkdC/ZODr0YhL
         Wp/Awvjq/ZjIdLPwW3q86WjnO7AO7EpjZ8aHLoQwcQZjdTVwOetWyM07RIZ6k/dHudWn
         Vb/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772150571; x=1772755371;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PK/RwDGn4rhcIXcaiN1UQUqnA1S4gUEA0ozjE3RGi4w=;
        b=xPv2URrss8ENQOe1X52HW6bi1zW4zBikkiWXuFTg1snJZK0MuoemzUaWdTg/w6/rMz
         9hQIur6WqHDXjrEcfSWYxhqwm9htTlqZBFqLV/RSrgYwDGiklai0lenF4/vZD1POZUq5
         NYe7ht7DT3b4f6buVEpBxLkpez15O3tZ8RxcD2fUsfyKI+Krq0rTEW6YeqbJb50Ck7+r
         +atFRBHCrYU15+SgWcMsCe5bH3hCJNKUNKylIf4wwFTu/AZuf9BlhOu49e1APhgrcgvM
         okbieNGvHQXT36msMjec1+5mqsamyMOpFqeYXH0gkOGkI0TQvvRsoNt5X5mVxZYCBF9j
         Lk9w==
X-Forwarded-Encrypted: i=1; AJvYcCXx1w+I/p4Be4vDpgCjeEAP6vApdOsQq+lApxShpgUPGngX3lWREkbYKcFt7nix5kA4sdyr8LZQlCE3@vger.kernel.org
X-Gm-Message-State: AOJu0YyFnHe/irrKi7UQvJGtK/eHhK+O6EI4gwohEMHW81pKniphXFne
	MFerqQdhXkvIzUMfEi5BvadiiCMgiPkUb9mkGKKWcqge4Xmi3/nlaBnf897OHFRFDXU6EiILDWl
	zC1KOBJCUqJDigdp7V5dnPsjnRKZeq0QpObtAplQqF9dc+Zz1h+xH7BDzThuXVeau
X-Gm-Gg: ATEYQzyQqbtD3a2sCzbppPme8xtRDZfDgrHWrPI+sOSLZcX+/HtghsYFcviLTgxFPrl
	NEc3NAtCn5b7mNm7CVbMX8EDGF0c/SuD64Jd3P7t4+Z9UweV6Bmthfy8F2/XHRsHCcFvtt2tQT6
	bspJ+bf86/CqmfQqNToXFzpw8yxAl72v6rUxsHWLA/LSN/dFGo9jhBygSfdOxzBhDasMV2T8be7
	lSW5be2+5mNZUVfK0GOWxwj5HPUcA9t/fInI6d595XUaHLl+qwyntQOMsIqjW4KnsEQdiOllw6Y
	MjU7wG/4KR1tVLtTA3jpopYfurHEJa72tXdHR/r2qfe4u5CoTmN0qqnoAf9o7QfhefTI+XVa1N5
	ABAjKe3GF6jimBaxpVQgdjJupt5Y8ShZX0mPabD/bNVjYa4zemZzyUseyJNy0IXvSJjVj3KewiT
	SBPNUOt3mD5BTEyx0SfnSxMPMrW8VDS46LDHQ=
X-Received: by 2002:a05:620a:46a1:b0:8bb:7886:7e1f with SMTP id af79cd13be357-8cbc8cf7cb9mr123556685a.36.1772150570913;
        Thu, 26 Feb 2026 16:02:50 -0800 (PST)
X-Received: by 2002:a05:620a:46a1:b0:8bb:7886:7e1f with SMTP id af79cd13be357-8cbc8cf7cb9mr123550785a.36.1772150570297;
        Thu, 26 Feb 2026 16:02:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a10a31bb5dsm1443515e87.71.2026.02.26.16.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 16:02:48 -0800 (PST)
Date: Fri, 27 Feb 2026 02:02:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v9 1/7] dt-bindings: media: qcom,x1e80100-camss: Add
 optional PHY handle definitions
Message-ID: <lxkbmpzqgkxdnanetardqhqpyop64ri5sawu3wta7hzjibbgzm@zyrdsfac4wvq>
References: <20260226-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v9-0-a59c3f037d0b@linaro.org>
 <20260226-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v9-1-a59c3f037d0b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260226-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v9-1-a59c3f037d0b@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDIyMCBTYWx0ZWRfX+yFOKz7ZerZB
 LNsPbIBSrxD7r43saHRyv4jEd5isBXf8rrKj+RYPi+VJnVHfazlGHekq6OYSHVt1wSgiqqAoBuX
 jJx37FA3bL5Czi4lfdQEvg1brJZgyp70SLu8sKdi9I/83HQuRF5Tm2R0gxrgSv6jQZ2ZDFwPD4J
 MR9jE702XPh5iGl8GkuWs5i+heosGCgRRiCVilNQX/5h03NBYPADKHjSYVOUEw73J8wVgL0NlYi
 nWWNdFrw9aYR8O32ClA5l15fi4TL0q0ltAYgRrNpbgnaWBjMIwKtCH4J5PsLRgLPISIrmBxYBCj
 oF5kQkSfnBcGEXEAXHanqaar0auCjDXJLjsiRvoOM1BbQ/Jayrvy79DNTG/piNfdORDC5DZRtDB
 7vbeWKas6sOYcme/LC1Rlq6M0ERJhtoD8/Rl/DSkawEm8dFLgPm8CVhJdktVHPZXhjIa243TJnr
 VcQLzI6mC3poRCnKc8g==
X-Authority-Analysis: v=2.4 cv=O780fR9W c=1 sm=1 tr=0 ts=69a0df2b cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=KKAkSRfTAAAA:8
 a=Pp-YrmajhGyftVfzjV0A:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: YgRjZkVcQKWiUvKDExMYcVGiEhBcvTxD
X-Proofpoint-GUID: YgRjZkVcQKWiUvKDExMYcVGiEhBcvTxD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_03,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602260220
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269021-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,gmail.com,linaro.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AE6091B11A3
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 02:28:42PM +0000, Bryan O'Donoghue wrote:
> Add optional PHY handle definitions. This will allow for supporting both
> legacy PHY definitions as well as supporting the optional new handle based
> approach.

If my search-foo tells me right things, we have more or less the same CSI
PHY block for a variety of the platforms starting from MSM8996 (at least
CAMSS uses the same set of ops). If we don't allow older platforms to
migrate to the CSIPHY driver, we end up with the code duplication for
CSI PHY drivers (one in camss and a separate one in drivers/phy).

What can be sensible from my point of view:

- Add CSI PHY as an optional device node under the camss node.
- If it is not present there, create it manually (by applying the
  platform-specific overlay, by using OF_DYNAMIC or just by creating the
  platform device manually)
- Migrate existing platforms into using the CSI PHY driver (ideally, one
  by one), while still retaining the backwards compatibility with the
  current camss ABI.
- For platforms starting with N+1 (the next platform to be submitted or
  merged(?) into the kernel) make CSI PHY node mandatory, keeping
  backwards compatibility code limited to the currently defined affected
  platforms, which unfortunately means the following list (I'd leave the
  question on how to handle the patches currently in flight to the
  maintainer's discretion):

     - "qcom,msm8996-camss"
     - "qcom,qcm2290-camss"
     - "qcom,qcs8300-camss"
     - "qcom,sa8775p-camss"
     - "qcom,sc7280-camss"
     - "qcom,sc8280xp-camss"
     - "qcom,sdm660-camss"
     - "qcom,sdm670-camss"
     - "qcom,sdm845-camss"
     - "qcom,sm8250-camss"
     - "qcom,sm8550-camss"
     - "qcom,sm8650-camss"
     - "qcom,x1e80100-camss"

> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../devicetree/bindings/media/qcom,x1e80100-camss.yaml    | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> index 2d1662ef522b7..bb18236b4f344 100644
> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> @@ -126,6 +126,16 @@ properties:
>      description:
>        1.2V supply to a PHY.
>  
> +  phys:
> +    maxItems: 4
> +
> +  phy-names:
> +    items:
> +      - const: csiphy0
> +      - const: csiphy1
> +      - const: csiphy2
> +      - const: csiphy4
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>  
> @@ -351,6 +361,11 @@ examples:
>              vdd-csiphy-0p8-supply = <&csiphy_0p8_supply>;
>              vdd-csiphy-1p2-supply = <&csiphy_1p2_supply>;
>  
> +            phys = <&csiphy0>, <&csiphy1>,
> +                   <&csiphy2>, <&csiphy4>;
> +            phy-names = "csiphy0", "csiphy1",
> +                        "csiphy2", "csiphy4";
> +
>              ports {
>                  #address-cells = <1>;
>                  #size-cells = <0>;
> 
> -- 
> 2.52.0
> 

-- 
With best wishes
Dmitry

