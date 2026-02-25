Return-Path: <devicetree+bounces-268284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIM+IVPUnmkTXgQAu9opvQ
	(envelope-from <devicetree+bounces-268284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:52:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB96196066
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B95CC30131C0
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:49:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C4F392835;
	Wed, 25 Feb 2026 10:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VN6zPI5I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hL+VwL7C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F29335028D
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772016545; cv=none; b=GxNLE3LQSCdh/8h62bgZWD9RCZODjKrvl6q6tpp92v5t5MYQ93UwbYOJd6q2I3ORX3t7nhbXS5WrjwOLnFXhsGOsEbFzXJ6x8r+JYaDbqqZEz23ddNVGXZ/gLN56VXV5zHuWRarOuMYBT7Cti0S0bK6h7rNsxqRDmyt84D5khJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772016545; c=relaxed/simple;
	bh=0x4P34qOErC6LXj6XLgUAmcFhZUAMcQzK9an4ghv09k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AgzogawqHLRW7QRGmnbAE2xYbXoOFwIumymH1mU98nU68kg6wGJ83cTedwUyG/mMaaG5v0G1RiL7Vd2NRjPjYnYnTcTHhUd8FnzfbLYB2f7HNAistjRYLkIdz37nykCLOdJgTk9npeerGBE1CQuXUiGCAECN4+Ye2Z+3ZzR/JEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VN6zPI5I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hL+VwL7C; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9Svsr2127926
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:49:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qgtx6s3ymH7QT+Ao1dj1AIr5Jv5tj5NW8LrZpgpMdSo=; b=VN6zPI5IiCr+gGGL
	53BhooNHxkG3qdCFp60f048jASDrYH6JKOc5noRharURaTiFMZgu15lGXHYlPcix
	0006N4TLPzhix+q97aRgaliH9SsMWBgU2em5V4JQrbEqbJyvyEsowx3KYmOFnMzP
	uN/7umfbkPHGI79EGLtGDCfRhdk7TPJkWDIfCVktB6WajlnAZjmDNmf14hY2X219
	XNIPk1W9pUgRM6m5W7tESwYXTUfhqaqHsP0B9IJULt7sYujt57aRK2ATIT07BD0w
	tQ9BxkE0rIckETouBI/kktzFetAQBPiv2GRaeVJc9q89OiD6KD1wPJUITekaPmdR
	6Is1AQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chexek77b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:49:02 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-895375da74bso59698446d6.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 02:49:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772016541; x=1772621341; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qgtx6s3ymH7QT+Ao1dj1AIr5Jv5tj5NW8LrZpgpMdSo=;
        b=hL+VwL7COmSEKXDjEhJGKOzCHLUJOXNzIsXznZcAjhRjmfcfpXVgFbRMn5F+DovFOi
         l4YQHg6fajwokFV4Ds//4DlAT0VurGgr+bo+4l6R0w8+WKs+8hf3faDYwS+PJKoBQmuY
         wAXtX9oCo/7/qZSbhALJdaHb2HohwGwTbxF6+jDZc+DevmXcUq2rOs+ITJ5lh87L5CF4
         dyD/OBEjYo3FWFl+7ui+UFvc7dTBE42anOqoTz5fAFueIHotnVLJhi1QLkTJVHioJ71o
         1NomON/EYdj4je320KHxYCucTjQqYaOLjzIzPW+NVxShyUuNAjYWegEPet17FQLr7b0i
         BXjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772016541; x=1772621341;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qgtx6s3ymH7QT+Ao1dj1AIr5Jv5tj5NW8LrZpgpMdSo=;
        b=r9pMVcbmmnFx0+7lt7fzot49kKtJJ0uPVdrBqyGdVd2WutfXXonaNArd5cvb1VUujr
         DABZavmZSTB3DzRorjbhpW9Vwnik7ErLv9zpCLDTLI4/jKAr5ltlqKq09oKFj0TkNSoV
         mX1X7BrUOpCtvBx/NPyywQBJkXWkr2RndjvkicTewhGYaPl/ghLBW2YiGi0vTVo89+1o
         UBhTP2X/MWwVTtq3MQf6hFsrL1KE8Tof7uuGLyXA3Q0ee+79yKddtSHl9TBBlq5tsMSb
         zBZfEFDhxWEmCvPmuPrpXi2Td6Z6Ae3DPcq/7snw5/l/ARc0yeQacPWp8kyyqKA6Jzc2
         0k5A==
X-Forwarded-Encrypted: i=1; AJvYcCVF1Vv41AnSgaR3ho6McvForhgzvxFG5xIFoLqpsUbdMiPBYp+J5qEFpr5p12crt7S4pUrhpYYfbjLD@vger.kernel.org
X-Gm-Message-State: AOJu0YzHdQDZAfYtf0JrEgJlFhCQ0VVpqhS/rgEFBdf0BrwMAXWgapsC
	dS1HzVEPnPwUNA3i8V+tgebfq9wEsClokKsdTqWoKh28vDTXPUFl2uDTmDoS4Sn3AXKaHRdauXA
	8h/uoGi1qoQ6f7TbClPtpePhwyHCvlkT1nXYpzG0BOnIF9PPx3FbwdjxN/AifUPq8
X-Gm-Gg: ATEYQzwD/F6ydH3z/EYz8EXqNXIuipoCY46kgWMEpMmR3TKXgoPz3AXVjMjP23WuNXH
	P0JoW+yBPrxpElxjroc3Lks5J9eCi/JYAyYC6UKFYn9+CUVoxDpvaZ2UPAM8j/Mpj3SmQhHFGp4
	cJpCNS6+PiLgXx+r5A6hP0I5dsaw+c40Bp0ktbpKLGQnjIFA3YICrioATZzYnZJxDUqmvva2ln9
	7UCJ/SRPrU2F60ByYmigbGm7K7YMSznykDT/jbu79pYmdU76GkaLWdH0adojReT7dheCGmOP13Y
	b6RmQ4kmUXDUz8jhQV2KNx9mngvTeg+hbT57hZ4c58Ys032Dp7I+IarI0FUYH3XmtiAqAvAhMnk
	31HCsDTXY2r/Q+3NYUdgw+k46ZinbV4nqFXJjTxAoAFCAn+OrDnb4m2npe9SA8Tdyg5oKHvcix9
	tObo8=
X-Received: by 2002:a0c:d6d1:0:b0:899:b986:9310 with SMTP id 6a1803df08f44-899b986975fmr10482736d6.5.1772016541619;
        Wed, 25 Feb 2026 02:49:01 -0800 (PST)
X-Received: by 2002:a0c:d6d1:0:b0:899:b986:9310 with SMTP id 6a1803df08f44-899b986975fmr10482436d6.5.1772016541153;
        Wed, 25 Feb 2026 02:49:01 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b90bdf80b04sm186150166b.3.2026.02.25.02.48.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 02:49:00 -0800 (PST)
Message-ID: <75113126-069b-4aa5-80c2-e9cfab9b032d@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 11:48:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Add dsi nodes on SC8280XP
To: Pengyu Luo <mitltlatltl@gmail.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Tianyu Gao <gty0622@gmail.com>,
        White Lewis <liu224806@gmail.com>
References: <20260225054525.6803-1-mitltlatltl@gmail.com>
 <20260225054525.6803-6-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225054525.6803-6-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEwNiBTYWx0ZWRfX40bQUCCh7ATM
 o6ADqtmv6x6OYW7PVZcPBgMmDtwwOYI1OYoNgATIvcVwJ3TfrrUS8Tmwfnb2cjzYhpuZiJ2cJh3
 btexAbFkPXa6WgrycrpwpV+Z5UIkLnlKudpssj/MZt0dWy3mkIEVZ1o3p9ZbJIrlrbSw8PKdr0x
 AjTMvnLZlJzWmYM+WU8rApoVrPcpPAFymgYojM7xOBLKfgI/IWYLaddhY9XNb4m+adF/YLRZeQV
 STpgdJ5M7KBD6rDayeFvZW7+YDnnEOzm1Hv/uPHZyAaKJxH0EWpm/spdfilxPpHoiSMyEesQMjW
 1bWOYCSlj8/bQjCbPlf0BoUAcv/mkQCtyhJmzjx6ijIcMPKb9pEKUzYlkBFwn9mtN6wBPDgf42V
 /4Fy0vEO8TMtPjr9cey9OlqOnjMG2Y261LrWrkjayoUYvZ/CMcbt5BR6wOnfSWZeqiaCUhToAI6
 MUydMEE8SbU0yA0HsoA==
X-Authority-Analysis: v=2.4 cv=V85wEOni c=1 sm=1 tr=0 ts=699ed39e cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=pGLkceISAAAA:8 a=mSDy6qZ-4McrUV2NBLIA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: _bk1_Gpe-FCwEARvklzc-IYplHAkSvYG
X-Proofpoint-ORIG-GUID: _bk1_Gpe-FCwEARvklzc-IYplHAkSvYG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268284-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,oss.qualcomm.com,kernel.org,linux.dev,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DBB96196066
X-Rspamd-Action: no action

On 2/25/26 6:45 AM, Pengyu Luo wrote:
> The DT configuration follows other Samsung 5nm-based Qualcomm SOCs,
> utilizing the same register layouts and clock structures.
> 
> However, DSI won't work properly for now (Partial content wrapped to
> the left side) until we submit dispcc fixes. And some panels require
> DPU timing calculation fixes too. (hdisplay / width timing round errors
> cause the fifo error)
> 
> Co-developed-by: Tianyu Gao <gty0622@gmail.com>
> Signed-off-by: Tianyu Gao <gty0622@gmail.com>
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> Tested-by: White Lewis <liu224806@gmail.com> # HUAWEI Gaokun3
> ---

[...]

> +					port@1 {
> +						reg = <1>;
> +						mdss0_intf1_out: endpoint {

style: it's preferable to keep a new line between the last property and the
following subnode, i.e.:

port@1 {
	reg = <1>;

	mdss0_intf1_out: endpoint {
	...
}

> +							remote-endpoint = <&mdss0_dsi0_in>;
> +						};
> +					};
> +
> +					port@2 {
> +						reg = <2>;
> +						mdss0_intf2_out: endpoint {
> +							remote-endpoint = <&mdss0_dsi1_in>;
> +						};
> +					};
> +
>  					port@4 {
>  						reg = <4>;
>  						mdss0_intf4_out: endpoint {
> @@ -4791,6 +4806,195 @@ opp-810000000 {

[...]

> +				phy-names = "dsi";
> +
> +				phys = <&mdss0_dsi0_phy>;

property
property-names

in this order, please

[...]


> +			mdss0_dsi0_phy: phy@ae94400 {
> +				compatible = "qcom,sc8280xp-dsi-phy-5nm";
> +				reg = <0 0x0ae94400 0 0x200>,
> +				      <0 0x0ae94600 0 0x280>,
> +				      <0 0x0ae94900 0 0x27c>;

last entry: size=0x280, all instances, there's actually a register at +0x27c

[...]

> +				mdss0_dsi1_opp_table: opp-table {

You can reference the prior OPP table (and just call it dsi_opp_table)
since they're identical

Konrad

