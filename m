Return-Path: <devicetree+bounces-266605-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMZeBO7VlmmVowIAu9opvQ
	(envelope-from <devicetree+bounces-266605-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:20:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B9515D4E1
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:20:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 06AD630160C1
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AD343346A7;
	Thu, 19 Feb 2026 09:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LL8+9GXK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JMrvNrZg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404E62FB965
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771492841; cv=none; b=Rp97WzFB+0eAgVn7MS5feHN4r7I9RmZs5O4FUdJe+zS8cIiDsEGTGVasHgK7kVsHtosLIv76AD1HXoAwwSDdqhbpt4SHohvmkIvuXPEP9hyaC+fYbi23TVH3RAGfGkMVX1H9fiVYkPgjSYe1bGdwNIMpW60qxAQtC3p1FBI/hiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771492841; c=relaxed/simple;
	bh=kisVfgvpDR5taz707UhZIUsAYFSg3p8Ww2QDn94jDMw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NohNPMt4ydiXLwa7CE+lYVST2IcTycLHVIUGSusqzN2sAlgnR/28exZDzHTr3k3yZeDZ+rY6PSE0VkpjIRzBBJ6HjS8jJrRr6ce08Wm19ON9vnBpEIH6srqLHrpT99zuKNAuYFmY5I8Z+1tG0sFLs1VDkDSVbZ89G196BQT0Y2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LL8+9GXK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JMrvNrZg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J65bI13982786
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:20:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=; b=LL8+9GXKEsEAzJIF
	bmslbp0+OH1/2gKlXlqiK7Rb1n/xeyZnNz9jjMRjDqxTRoqT4tIuNv25nj3ld0rb
	TYidJbq0fJKwRnFMYBMZO9n2ESquMGv5y/J+czpiOtYzCJAVOKKzpEGytpv0IT/7
	X6I2frhWdwbbIw2aZSycgwsXp08QydGZhMDxcO0tanwvGbQGFyY7WaFlW9e2reXG
	46zr/w10WFtWzHRwZMKuSyIXjzAYn8+xq/i/9vCbVqPQX3NnLGZ9J+uXXNP00rq7
	Fp4KavodxiFrfYmr2AQQzxWtlVxXcdOJJ5lxXKyX3leCClNScYG0EEykfDgd9MdB
	N7irAw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdc7ub3pb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:20:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70cb31bcdso72737185a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 01:20:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771492838; x=1772097638; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=;
        b=JMrvNrZgRyGr4xMYG5twM7hF8dX1KDUSqeKaaBDD7B08NScEVohAcY+lhv08pAvppr
         ooKSXqtBqBkd9OLhVX5AdnvBDLDscMyP0Vd7ZrYurqbZZJGAs69OLJtJ8HpteUGY6HW0
         LjR0YvOUBQ8T/NdjBvHTue4CAVqOm2rlB/ID5R+GlTL2Y7urvezA3u/S+wVsK132lxxD
         zB2Tb2UjEZ9t+YzOC72SQd66Q24mR3C8lDftRpWcCuegaP+Bm6GljWcarcUUr1JCugfa
         iuPu88UJuWMUneub8RjrYNpfIGwVqM9FKvd9mM5V75Gvn9InAgNY8LfmnFXX8TRPyx1u
         d4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771492838; x=1772097638;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=;
        b=pNGSx0o1MwC/knxpT14TwNqq8+fADeLrgtJWv/13Mv4whC8kxJ0zZY2yR5b4yc0BfC
         tZokCfJl2CzNYtEYYhnk9bX0M4MtwqMUwIYn2oQdZUpUnI/p0Rdt4KudDrzFIFGDV0cz
         mfXj2WUSWiyWDZZgmBsKuSQ4KSXFVypf2MGzDM8Dxf8shyPijsxxxO7cDko9GAgxvRcO
         +vgOKdM27rVM5lSKVeB7GFVnnkpWhLSYsz/c5kesFDflPCbyukS4frN80KcHsfTYkgGI
         9Q+UTbBM5ysbuPl8yDkJVa+fp19U4s9BMd8k087d/qFmtXOtM7EtznkrUyOXIgF1JEtq
         kheQ==
X-Forwarded-Encrypted: i=1; AJvYcCVouHE9xZEQUn1Rv7ifVWGf6Gcn4W/UBB2ZKec5V79vyYpKn/4tN9/ZkeyBqDXe7QNZimvehc88tZHj@vger.kernel.org
X-Gm-Message-State: AOJu0YxR7+GFmPGLnHEVq9z156ZmFr9+f0PSWDR0R8jRrZRLbg9BTP8t
	Givvwu/WrbrgL+4Hb/n3ALDELxvHKe24v3eWW7/mr4EDc1ckzaDRwgxKjmIW92QCZlB+4PdpR16
	OzP51XUSI/a8dL58hfBKN6ftIwdxumsD4o1iW4tZaaWjFb04IFyF4PYIrA5ahRsw4YA6VdH+M
X-Gm-Gg: AZuq6aLgUjsonwWGIqejzZKR3cUSDKoP7bZjbkuduNJ15hSnzm7baXp3LSpbNr/Is1M
	AcgGXMgfaFOP4G9iXTlnSCmE5o6wAnglkfcow+HhBPSfKydrQPyD4VEaIjfCDPNHYXlTMWeXW/F
	RKna0YKbDxZ4q2nm8jr0cS4GOZFBnuuptXwd8KR8eBGzIYjQJ9tHqLqg1G2H1saWgymMf3D30nV
	qDFJhwZ+V9LK2OuNF4D1Jzf2F7rDtlbv7hlLeOfV+2U47yxeXjbEm832djFjQwW9DKHBrY/fF1M
	gvIV/tJsR5DvIcFaPg6I0o3STZ0ipgMvaSI6EVQSQ6BPQAue3XCWG50MzEu5U5hYOFrM9PUXoXP
	zSCHCJJ6thQHZtlKTsEt3gbdChCyh6kFv5SMd6+VQYR7e4bgOInjolFC1+vqXwc8nTLhkkdlkI7
	BrQ78=
X-Received: by 2002:a05:620a:1925:b0:8c6:f7ad:49b with SMTP id af79cd13be357-8cb408839bcmr2011804685a.5.1771492838522;
        Thu, 19 Feb 2026 01:20:38 -0800 (PST)
X-Received: by 2002:a05:620a:1925:b0:8c6:f7ad:49b with SMTP id af79cd13be357-8cb408839bcmr2011803485a.5.1771492838054;
        Thu, 19 Feb 2026 01:20:38 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3f137dsm3559293a12.27.2026.02.19.01.20.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 01:20:37 -0800 (PST)
Message-ID: <745504f3-4891-4097-8612-3b02ae3ef8f8@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 10:20:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sm8650: Drop redundant VSYNC pin
 state
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
 <20260218-qcom-dts-redundant-pins-v1-5-2799b8a4184e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-5-2799b8a4184e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: J7Ybe3To-bcvzx21Jql4Epbs07YIM8aa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA4NCBTYWx0ZWRfX8nRyPXfSHCZU
 I2xDxrNT5Xreioj0J7U31x4MTjqHrWXYvUqNL4+VWc//EbNd9RQd7x9Gn/OvU6SIbAbTmmIjiNS
 j8cIesMP05iJT1BwM0ZbbyGwgMvzUPlMTTBNe+C+lKZKNeTEBGL+HklSfYBHTmsX9xRulgodl59
 W8UocAb4QvfoPHrfYCgX+jmyGG/TSsF9rt0K0Wi8Uekz9BDVtjiGaig8uYoSwgFPrttF3JqLaQ9
 J7K0UkYLi34vzsJ0D4ff+mAxV07j9o15xmrSNtDHeSKBp0GT2L4kLAi9MUf+wTE1YIdK27dxDpj
 UCgKo0ALbxmnGine4eEHJt61rHB0HGHixELd0t3KdSgKew/msdVPpSy9s2XTG9OfQf43OV/nrSh
 JmajITN+GlRO5PuwxskmWGYHDmsHAD274wq3SO4op522LmxUm1v3WpNTxUPX2Q2nfcHtzS0706f
 TXCieAy9koWNfzNqD3g==
X-Proofpoint-GUID: J7Ybe3To-bcvzx21Jql4Epbs07YIM8aa
X-Authority-Analysis: v=2.4 cv=daCNHHXe c=1 sm=1 tr=0 ts=6996d5e7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=NMe5sQuIffPLTvoV0ecA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266605-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 93B9515D4E1
X-Rspamd-Action: no action

On 2/18/26 6:24 PM, Krzysztof Kozlowski wrote:
> The active and suspend pin state of VSYNC is exactly the same, so just
> use one node for both states.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

