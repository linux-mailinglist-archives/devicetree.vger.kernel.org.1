Return-Path: <devicetree+bounces-272859-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPEMLWGsrmntHQIAu9opvQ
	(envelope-from <devicetree+bounces-272859-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:17:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DBB237BED
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:17:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 60593300B55F
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 930E7352C22;
	Mon,  9 Mar 2026 11:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BVKto9Np";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jsgXIMDu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E02739B959
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773055051; cv=none; b=FrbsE2R5bAiZyCm3mpBhfIhVq7ksejId7bFhPXyLZp3bSmz2qmm7kMT8ZIpDNtlhGkumZdqALS6sltLCdvr8r1beh0x1nK0ED8hSUiASCBio/MhirXRos72rQ9P5XLssMeQ7rXoYpL/bXNp8MDHBlF/tuHvcS+mbMoly4PtOuSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773055051; c=relaxed/simple;
	bh=vIupXVvqq0aF0TbLaTcRw65mQz1unZS5rK0UxQXwVv8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s7hxrdadLo7mNKBwLz7gGhBCQD8EjVA1lLJO9rs8kSfvV75Mz9J3cax5mK7uvvLpF5cWbmTcZCkTarv78mQJPdxAK+bNS81iSnsCidCje/UKuZZJg5H4MJgyOelfHxXZQhWbHSrLoGASNoSoqZGZQuyl9gxv5QVrP9LUqe7zUFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BVKto9Np; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jsgXIMDu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62989mPY2660352
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 11:17:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/iJfBOWNK2bjijtz10fDSacvDWmfQHMuUpjyXhkkiV4=; b=BVKto9NphX8o+346
	+v1lkz+UrJILFuEekqB/dlREsLONTKPaAf4tPmgiSdTrN1AIuE3P3Nu4OFfiLFiY
	QZqetbc42AO8EC+alwdmjzzImaM5K5DZpzRw1sultw9uXvKcXcxBpo/0KmiMqZLd
	JSSkUn3IOxbRXLfm619eq+a4SKe7E6DcB6f8nB58ganvw9P3CHtuqhdnEtcQ61Z8
	C7mpm4/P4xQukJc3Gye+ZwE//T+WdYiBAtEBr5HGnss2xBYWQx/IFJryzo7argGg
	VFjsYdbjcIx7Bzw01JpdbYAhgKhD54mcOgtUD05KV6pJEZt9eeVV5sUuw6cIE/7d
	iFEHyA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cr9cpnec2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:17:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd8e89d19bso29287085a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773055043; x=1773659843; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/iJfBOWNK2bjijtz10fDSacvDWmfQHMuUpjyXhkkiV4=;
        b=jsgXIMDuS4puhzznkKsi7UMCytXk06rtU+0++FmbTw0A34rUQXP+c1qFFGadNLe7DC
         zedadK7wQLWQFCDKsF34zrCT5FD8iy8Tj8tD6J5sgq8Ntxq2GK0i9rxBPB123TGJA3Zg
         d7Fp33grRdBTF1Br6NQDeqF0/XFZvAvUKGhXc2xb8qIIFvD5GTLz/ZH2OCPduNrxrZG9
         A+bS6A0QhaXSjZhwSb0wL1qwoGOaNiNvG+RyMujUvqImVZPYNgYRZxftjJaxTEzwNWgY
         1b/NkGQc0OCnKO+4YQf3sGqPfRKOvQ8aoirt2dGFdITJZhAtok4ejgzQg026qPrkjUp0
         cKsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773055043; x=1773659843;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/iJfBOWNK2bjijtz10fDSacvDWmfQHMuUpjyXhkkiV4=;
        b=NR+64fWdI/tu75OnPtAbvKgTr+3a+ZvUy1VxfArXrTIZ7w3hwSvQC/6mZj6lkNEQvk
         TTobAc6484fA1WlnZICrhUymz0WSZGBsZqQg7pQpg3RGD+DYyWt6b14blxQv15HOhhKo
         32//Nu0J3d2wzXutu1bcc9EBAJC5hMl3e+iO5eBrDA2DNwwUJ/f0lCW2lskeMhhNP8Io
         FxcgLPr8zN8HdzELLQm7rHVif8iQDQvXXfik2VAwKwHy6qur+7xPSb65eOJhwAoXo2jw
         zSJKcZDfbSVXS1HzuqL2RVQU+YHBdlvHdC15py3xiLdJ4mIsgp5Rdoz2iOx6xwjsWlWk
         d2Rg==
X-Forwarded-Encrypted: i=1; AJvYcCWfuojsOelx4kpCSeaKoRv5wo98pfSrb9RN5bae+UlX43UlFr67yQq5+8uZx7zFO+oAecCGS2RhLZOM@vger.kernel.org
X-Gm-Message-State: AOJu0YzjOhAkNgzzCcqiBJMaFlDyeGZV9ARQiynv3TQ3cVlCBRp38q5B
	oUndGGlexLk01jxfC+JUjF0G/Ox9lb2HYJadzDYT6HWnMFTr3sTy/7JumtrKZoqdGmIzH6j71+K
	HumrtwuYLq//tCEkthDqVka5qT7lnz5DRCoOSzqDo1AKdv8hm+F0XJH6cGUtyNI3Y
X-Gm-Gg: ATEYQzyLDDZss7hydQ03g1Oi1JdM4KnL65SnD392uvS0UWJr1kS6VAC9dVGJ+fEswpN
	tpuCmZTCuuxogAUxg7lyrj/OtZcb4oDbHXBYIuAlCVsI70Q6iOSb7IC9f2hsXdVV0aFDBjqUgCT
	Nsx5fxw9h7QYDrWuwkCYDmLZUOIEl/+IWiliGVYagp5Y4LpoCEW/pRJRWmwuLwDO2G4wr0IpxU8
	Bqc8Ll9YKaO/IDzYfkDvolsG8rty/jDMp4zO6jwhD4gtUzXRrqPbDojlS8ag1htufdG45ex6QA6
	32SyKdUVduSV9dH1TNkzBs2XW0wByYAEEbsEGjAFLwfSLikcl08UHBa4GQBzisRX0s/xJFK3hHa
	M3ytkMSACQxR2BXm9eBYuXT6rvhuOoCZtXT2b81U9YsuLPJLMIZdO5Wy4bYxahI7gXbtnySJ1+T
	nC+gQ=
X-Received: by 2002:a05:620a:7004:b0:8cd:8b9b:4581 with SMTP id af79cd13be357-8cd8b9b46a0mr225068885a.0.1773055043366;
        Mon, 09 Mar 2026 04:17:23 -0700 (PDT)
X-Received: by 2002:a05:620a:7004:b0:8cd:8b9b:4581 with SMTP id af79cd13be357-8cd8b9b46a0mr225065185a.0.1773055042900;
        Mon, 09 Mar 2026 04:17:22 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-66298248bb4sm353697a12.16.2026.03.09.04.17.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 04:17:22 -0700 (PDT)
Message-ID: <fa8ff125-8680-44c1-b516-66d06eda7b91@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 12:17:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: glymur: Tie up the CX power domain
 to GCC
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
References: <20260309-glymur-fix-gcc-cx-scaling-v1-0-f682c82f116f@oss.qualcomm.com>
 <20260309-glymur-fix-gcc-cx-scaling-v1-3-f682c82f116f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260309-glymur-fix-gcc-cx-scaling-v1-3-f682c82f116f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEwMyBTYWx0ZWRfXw4duTPbnlkva
 TWGCKn1ZkmP6LVknWIwmlBQuIXhD2qqTc/KJWn+H89tgxLNqCSVagp1le+Tfna97V8p9YjMpnJb
 sG1A4GMa5iYk3sBESqJ8gFv4GMW4O7TpaFT8D5Ayo5vAdW7s237lddlhWK38o7tQpUirNEL+7XN
 ONk5481tqnL+U5Ymjh2LSnptIXiO1LbDg0dW3fFqZoFHW9YCKO9BkFOVuxgKks1fYoY7J0+sr0n
 OSso3+42PbxkPA7CFA6NZY0IG0JHLWt9VTsOl1zx7l4auKgK9xP/iOsStjM91FhLpOxzG/WIlqy
 AiPUiSaVY2syB9P4QrlDSnWmYClvaACfy/zgnTYVuupIifNBckt3eza70lhfeoHbreVppPSA6XW
 nn0FRWIb/x72r59qN4DknR0g8NHdbR5k+i4EQngDebYvqGkYWhOW2Rjt3A6p5HoJ2flt+XOuYBQ
 Ob3WPSNJlpSrw5KN2WA==
X-Proofpoint-ORIG-GUID: LEd9RlKPtHTC6PPeJ019N4NRL1Ionn2A
X-Proofpoint-GUID: LEd9RlKPtHTC6PPeJ019N4NRL1Ionn2A
X-Authority-Analysis: v=2.4 cv=e7sLiKp/ c=1 sm=1 tr=0 ts=69aeac43 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=XFCnTzhwHPFgJtnojrQA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 suspectscore=0 spamscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090103
X-Rspamd-Queue-Id: 04DBB237BED
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-272859-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.1.134.160:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.938];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 11:06 AM, Abel Vesa wrote:
> It has been concluded off-list that the Global Clock Controller needs to
> scale the RPMh CX power domain, otherwise some of the subsystems might
> crash or be unstable. So adding the RPMh CX power domain to the clock
> controller which will result in all GDSCs being parented by CX. This way,
> the vote from the consumers of each GDSC will trickle all the way to CX.
> 
> So add the power domain and Make sure the required OPP is nominal.
> 
> Fixes: 41b6e8db400c ("arm64: dts: qcom: Introduce Glymur base dtsi")
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index e269cec7942c..2d1ffbf53730 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -764,6 +764,8 @@ gcc: clock-controller@100000 {
>  			#clock-cells = <1>;
>  			#reset-cells = <1>;
>  			#power-domain-cells = <1>;
> +			power-domains = <&rpmhpd RPMHPD_CX>;
> +			required-opps = <&rpmhpd_opp_nom>;

Let's not keep the system at close-to-full power all the time.
Please drop required-opps.

Konrad

