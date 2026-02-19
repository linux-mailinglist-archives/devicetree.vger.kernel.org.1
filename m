Return-Path: <devicetree+bounces-266666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OM5PBFIZl2nKugIAu9opvQ
	(envelope-from <devicetree+bounces-266666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:08:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFCB15F576
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:08:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EC3E13003D0C
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:08:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7912933A6FB;
	Thu, 19 Feb 2026 14:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hp1O/gBI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b0kaAsXr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623D41F09AD
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771510094; cv=none; b=nLwpkbrZs8cWB4UMnea2NU+eTlQEy2DJ+eb8QRXuAAa2apqy4fJ1WqPmnP7BUSdf3J8TTcg8pMqcPKn9YhIzCTqcBCNdFwnZcdPtiAu9xSbtAkrcPTifh7nTpEFWZE+vmjdPHcJtOdA2bxPY1ZZkMe2Ge/E46QseW3SvI30BP/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771510094; c=relaxed/simple;
	bh=Q391Dm4SW945TKo3rFI4n5bLT4WA25tx2gWp/2vMkJM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D9/X0c2KCj4RVxiy6PaTZMviLxrg0DkiwsmJdU3gE+ZhEWN3AFhKOV9WQEAXXWVce+xF6Ln+uIpQ95OEVs1QjKRBHTEedH9e+eoChNBjaEu/s3sSB3VEcV3h4Tfgicm+/D37OBqszmUrCS3HjzbLjgokABXdMIyCxPNVE8ARpok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hp1O/gBI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b0kaAsXr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J571fI3319876
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:08:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	39Mg5NcA8IAPxnmut8jqgaZH4uUJsXDv7uokjlJK1Ko=; b=Hp1O/gBI9NQ8NEUi
	PgY/+v/c9Z5+yqQHtXo1CNZwnm7EffZJbmbIlfTKGdXay1MBSSm17bvft8DyC8oA
	tMFwq3oYCavQTA1kzlOm5q1ZybYttlpWxvQkyksbLHG2EkAb7GqN8GmQ1I8G6+lv
	v+14TQMMhLB7m81DoA/Y5O6NHIlN2swV+CbSCf5tF6HhodD89RePl4WARvTFVjN4
	yR+02SJKHnkeOf7a/M8df5bGsTL1ZPh2leBUsdH5BxID5QLcwPuoBUCDmkBszadp
	zF/1YcxSNp4LUyUww93CS3um92WVupJgvC8un+j5UBnqrA7XZNEnfwEAwZXXhIWv
	hTnP7w==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdv389cke-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:08:12 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5fc58a4122eso107649137.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771510092; x=1772114892; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=39Mg5NcA8IAPxnmut8jqgaZH4uUJsXDv7uokjlJK1Ko=;
        b=b0kaAsXr+LqR4VXLRJ37q03njV8Kis9U3QfwHDe26iIBQculV7o3MLFe02Enwlv4rQ
         EnbA3NrxWWbdb5No4okqcImry1lsn9s4os2V94srdFgh4GkkWt6l3H/LNIW4wDaOgqgv
         /eapP8fmv00bO4V1owvMa/QcVrNmWgXvi0Ozn8VIH4SPB/p05hKCU4ZXwrDbwZfJDlwo
         +8FpGXSS0ggvnuphyUydQXAyzZxyCY9zCN7fkneOsy4jy18RCy83roFOti3OPOD5p4j4
         O274beBz92e5v0dlD18v0q8cIxcNUT8RtFBRVtEYTIs+GGPVwpeeaQWHwLuXnl72+XpE
         tgTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771510092; x=1772114892;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=39Mg5NcA8IAPxnmut8jqgaZH4uUJsXDv7uokjlJK1Ko=;
        b=aYmM25HVX5yJNWaUvKd2rkHdhzIOjZT36pFa7APkX679GL08YX72jbBSAMIdxDyv73
         7VOAOzRD3V+AzizICPojsiOcSxgsBy+fn8wkWaFzhVM2A6wz5KmQUsN89b6f2EwYyMHP
         1ml6J42cl9x9I1F8393Dwj9cG30YNFyYg6+a6ENyyoPtLwFJcGBVRVSRcKVEhWKk/0mw
         EJolF4iSv6uCZWgsNnbIndy+qv6TYUT/C5+OPDqafRniQhjbNHOP7wn2UVIpWnrGhqPY
         JrinDrLTdIuk/GjMZIFq9BaQZ18mvNQBSXhrUy5Yw5jCIGqmyOLZTHBVo6t61yXDYuu4
         bO8w==
X-Forwarded-Encrypted: i=1; AJvYcCWNDlYQo12JkXSERbCzyU1xYjPLVHeP9xGYfZiI8GZDG2AGXqvgYZ5Pw5vDXhqwe9NSlzI5PaKlaVoC@vger.kernel.org
X-Gm-Message-State: AOJu0YwrGjMbtEBr8vItzkxGH78l0XxG8aPvQ11bkOpczs9jS3VJCzmy
	B+Nmfoit0Q57usfzs9dQmNfq3Q/q/cGS46q51QXivDyalAVqFonUq5jxbikOQ3Wr+CF4ZVVRG8i
	a2bpVsA13sld8+exoxwizSdEFg+ryczIKKiViJp1meVOCV3qFmLId0/vyzYJCAk/U
X-Gm-Gg: AZuq6aJ+WDo6dQIWfNv+hC8N/XbUWHWPD0QKy+uBGac+bqX+AeofYba3LmCg10gzChG
	K0jMiTs4WSWB25O1k5GijIezOZ9WUrPXerMHdaZvec6nzUHDQ6rBFkO11bnDZa4tTRbpZILGkaH
	++4ZerMSlvSpgOoIvthwfTHyYI6do6X1eFkuzxe/IejWScdvqeJARPs5rMSpC04G1nl1YDVzS55
	Aooxy87ho2tvEXJKkg0s9c6e6likonFFwbDrIXgwGLoesTGV7ixeMtxHrAUHZmfsQ5jxySvtUKy
	gOYuOzI0qV1B9p1tbueXAAlBPK+JOU4+sXQXhKLKBm0qU/j1w9kuKyVKc+8b1k7bRowgDRZBSKo
	aGqSHbhTwtcKbTS85Tgo0a9fnFL/SOkxl0sS7YMIjY6q9ivIsUTNwixJ6UtEABZ70ke1jLusGA0
	mrlaE=
X-Received: by 2002:a05:6102:6c8:b0:5db:cc92:26f3 with SMTP id ada2fe7eead31-5fe16eae167mr4009010137.3.1771510091668;
        Thu, 19 Feb 2026 06:08:11 -0800 (PST)
X-Received: by 2002:a05:6102:6c8:b0:5db:cc92:26f3 with SMTP id ada2fe7eead31-5fe16eae167mr4008978137.3.1771510091020;
        Thu, 19 Feb 2026 06:08:11 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc766554bsm575839566b.46.2026.02.19.06.08.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 06:08:10 -0800 (PST)
Message-ID: <71026dff-f358-411a-b98d-aa9a8b24360a@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 15:08:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Enable lvds panel-DV215FHM-R01 for
 lemans-evk Mezzanine
To: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, venkata.valluru@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com
References: <20260219-enable-lvds-lemans-mezzanine-v1-1-9cb2075f7c18@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260219-enable-lvds-lemans-mezzanine-v1-1-9cb2075f7c18@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ceffb3DM c=1 sm=1 tr=0 ts=6997194c cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=VLlN84S9TD7RBDtoDY4A:9 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-GUID: 1L7F7BdmLE8pbFVvL4FGPlGIArJmWABy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEyOSBTYWx0ZWRfX6MARxAy1vsQU
 3SdLhjG4zow/TKwbHxZaviEzLMNkO7Y/f8te4+3TOp5pesUF3+WYVK5bZPn1JB2tb9qD6pmPdNi
 vnTeKALtt43c8k4QmTdR1rvc5cPwn0JA7mSY8he4XRmxRuVcNs4z/3hjWpmIVsydXFEI9uUsb5C
 MdwfprO5o1nwuzdrYKWZouZtpe0TdtM5Anb9VPoFIr58dFo+eXtTsi9Pzhwx9tLD/uRHNDsM1HL
 k3IqKQM5Z+tNa9vdhRvRZHvUWT6Gutu5mBFROeN+fvs+akjkhlqqLp7YJeHoyqULqHnYkJ+8NPk
 8M+lUmvWdVwO63eY3hgRLhni+j/HE57VdSRUy7lj/6atof9+Fln6fTVwYFxQnVxT2OVd7Eh2Gfh
 q4bKYwb3Nhx+3uGezeENhw0eGhsD1oJQ5fatzG3PrQLktdiCWqbSB43n4jrupqQ+SZuey/byZKa
 8ipdmks7bSYcKoNwqrA==
X-Proofpoint-ORIG-GUID: 1L7F7BdmLE8pbFVvL4FGPlGIArJmWABy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 impostorscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602190129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266666-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9DFCB15F576
X-Rspamd-Action: no action

On 2/19/26 3:05 PM, Gopi Botlagunta wrote:
> LT9211c bridge and lvds panel node.
> LT9211c is powered by default with reset gpio connected to 37.
> 
> Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
> ---

[...]

> +	panel_lvds: panel-lvds@0 {
> +		compatible = "panel-lvds";
> +
> +		data-mapping = "vesa-24";
> +
> +		width-mm = <476>;
> +		height-mm = <268>;
> +
> +		status = "okay";

The status is "okay" by default for new nodes, drop this line

[...]

> +			port@0 {
> +				reg = <0>;
> +
> +				dual-lvds-odd-pixels;
> +				panel_in_lvds_odd: endpoint {

Let's keep a \n between the property and the following subnode

[...]

> +&i2c1 {
> +	qcom,load-firmware;
> +	qcom,xfer-mode = <1>;

These properties aren't documented and as such this will fail validation
(make dtbs_check)

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&qup_i2c1_default>;

Please do:

property-n
property-names

in this order

Konrad

