Return-Path: <devicetree+bounces-267701-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFyBNEsrnWmfNAQAu9opvQ
	(envelope-from <devicetree+bounces-267701-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 05:38:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AFE181B20
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 05:38:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A35D931BB7D6
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 04:33:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D06526ED48;
	Tue, 24 Feb 2026 04:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y8GMJwpG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E0yo0zxq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7FE81607A4
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 04:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771907596; cv=none; b=eLAiOM9HcfMkbihQamwd3dNiH8Sv5spNkrqngt86dLG0WvBlJo+XCS2gPSZHMRdCzt6QqD49HOSr715xjjaAkd2UJg24H9RClL3Bk/mlrLg/HBItsSsmohPFXEt1iaSqI4UFemwb1lK6LjK9o6ryu5QfDAWJy5RUxE00cEcJ298=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771907596; c=relaxed/simple;
	bh=cbMblWHEpggARZ0raE2x4FcCFY8hp0Wgxes8ltfPLtg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=tTzyaWkRVqDIUEqyE4cObIpyEhCB/FLrX84WbXhjApOSXbdSIBtrx4f4Wj6EPzeOiFhvuuGqBOiFoh5qEu77NHDJMFm2JnP9J6SFxYYeywwcYte33PItoxuXicMlMI5mxtZXNQiN+DvK/hcLZzh9ol8iRVOI+W6juTbEB8puiak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y8GMJwpG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E0yo0zxq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4LSH11018074
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 04:33:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VxaXpVx4mutZ2XD5jljrmv2ktN2mvGucKtvUTSLgJq0=; b=Y8GMJwpGlQeCpVCi
	YSjOP8Rp2TScVm3nfN3XGdoPm5oZOUMYY6wfys3MhrxLz2yuRXiMTfINrs+JuTIo
	/idnrggo99A1msAV61OK8rADmh6x2r8jo5iDjjD2Rr0bMX6l3akCw7yAn++Zk3nt
	MHXrN15gVxsiM4jnufA7k0OcPx2Xcb6mJIpYXWIM3V/F1RiPP9KoZvzeWJwOngl1
	6eQ1RebH1OXPFUgDpEnplK34bfMt8eMmACbg3K986J7h83pOMLuynuTlirLVQElN
	BZkNGTW+xLsJRHtd6q2L9LOFuoBGWUJQtlHruIoXh7MrwPIGT01WyPIrhyDQwyBH
	nVC/zA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgpj8am3x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 04:33:14 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2aaf0dbd073so61759245ad.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 20:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771907593; x=1772512393; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VxaXpVx4mutZ2XD5jljrmv2ktN2mvGucKtvUTSLgJq0=;
        b=E0yo0zxqJJGQVbWDtQCBNmir/GbPG7CLpTBsoAMSgyx/O8hzi14EfaiHIebiiwPq+j
         /zs063sNOUa5Wwjn4jAqyWRuICJvTpl0u2RmWgyqbEhxLFMBIer5lKVThK0fw+1hiDHg
         9ZuOxUNBeZCqMIj/L4DKgzy03eU3boBX9q/zR5g5yERSs+j53A1AzkESNMx+sa7vWM4o
         HyqyM1XCWZnZcv+AESACE7pPF8K7diackA6w8gfh729huuwmq/n+QEiToC63Tx6wSrI9
         iReEgXHeSce1g4E8T4rePb14Q+nU6z84x1+40TotOK+Pa4YUIm0Z0RJcWdzihmhBjeiy
         SsYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771907593; x=1772512393;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VxaXpVx4mutZ2XD5jljrmv2ktN2mvGucKtvUTSLgJq0=;
        b=DIRs51n5JRQJQnEdWajHtWs9v6k+mfPWgBc5rVC4Ys0gbByoDcpFK4VEoJYJn/bnYK
         iAie2YKf3lrB7sw8QcqS8VCZ53kj01XdRsnJWvgmPrdZfen/FRo+K17g6oo59u5EU5oW
         Vettps2S2r4emCfsI1FB07uNtEiJQHAJO1iN3aaO+Djy8ppl/vaXwUcMEf88PXqxYJqh
         MbhNbRBQv+4mHXBq/1gDxklHKEijpFTrpWugsKw7Iu9GxfkX7FUB40RFOI9K1iX5x/LQ
         2iFz6183/5HvheJdwVmK7GaupHORD+gSJ8neerT31QxSJq0wLAHdj70lkOd/K9mPec6F
         qq6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWrVpG5kzxtCAnRYBRJHz4kMyxj66kU3gVoaICfk9DNU5wIbd+LGQbbH42SGVWABY8BRn/TTuqksLyJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxrNYAjreuG9Vz4Zd0dHHuyErqnehcicZ4HR7x3ZFx3h+yoTPuQ
	RZPjStwmWkXXSRju0OWz8SvZErZiJVIGefca8Eiy3RRuiWxD8KSjfyfE6J1G5hg9cJnesvIyy6J
	v/kXHm3HVYlldgH8J12SxCjExivM0GQlILcp+9u8YT10nWBoEPNBT9Z9s3HDB/LaC
X-Gm-Gg: AZuq6aINPVLxvmaepRAVV48Jg1X9650zMXI7XuqH+IpbPgFRIdHCVPvM+sWHW71784n
	hlWu4ewQsRBZs6HF9JZxv3CczqXzT69C5yIwTQs2BAKMcxMjvwU5B1D0HaforDKJZ7ONSoRRqUq
	arzHdcKpJyZuwgZV0JZ5Rko8j2vRATa3goVgwNBA9T+zT8aukn7lws4pU+pSVag7gTYcltB5s73
	ejkPEUQBZS9V9A8feKthZ+9rhux0wJeiHGCCZrsU5n/dN+6lNqt9i8M+VHJkJq55W9SaCVOwGtt
	uCI3ELWzZLvdE7nb0Iql9uMuY1VW0PsHF1PN76VHZbJG/+YqE6EBIs/wGrbo2ihM7FM+AUIQnOI
	L1YEN5jAP9zCU36xDfuMGwhahe+0WKAE/S63D8L4kp1I9YLxr5g==
X-Received: by 2002:a05:6a20:9145:b0:395:116e:ac6d with SMTP id adf61e73a8af0-39545ee5e7fmr9947206637.31.1771907593347;
        Mon, 23 Feb 2026 20:33:13 -0800 (PST)
X-Received: by 2002:a05:6a20:9145:b0:395:116e:ac6d with SMTP id adf61e73a8af0-39545ee5e7fmr9947184637.31.1771907592855;
        Mon, 23 Feb 2026 20:33:12 -0800 (PST)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b7180613sm8728494a12.3.2026.02.23.20.33.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 20:33:12 -0800 (PST)
Message-ID: <e025b1b4-8f5c-4fd2-853e-56b89f1f8e79@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 10:03:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: talos: Add missing GCC clock-names
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260223143624.118271-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20260223143624.118271-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDAzNSBTYWx0ZWRfX2sdcuBA9og4d
 zz0fH/JixCgb8supvq4Nfu2rDkSrbmDHg+z6lB+3+/gjQ/OSOgnuf2wbW1Zc61t3DV39Ny39FdQ
 RU+rbTdMg2AphzhgBMm+qiFuqRtygf6Cmv+u6sM5aMZI4+xnBAVkgrMgH81Rs9nFZOEV8EoKtW5
 4txaXzKX065fASPQOcmXzBh4h1fHWlP+a5NgDbhevf6tT2cmxcXOHorIYkmUZ7wzbI34W71kkte
 qx5d+8Vc7qP36OYW/w+m8k0wBm9TBU6zxo/y66b27cRgrXIu7c5xsxR9JZNF2sJsZnofCzLCNxv
 vTGt5NX7ekCZS4cuLR/jln8y69uM2Cb7NoY1pRi7bFD/3wKkAq7YlSk4ullFMH32+zv1r+oM/i4
 NmAbuptY6nfD/JVb+1c0JhvQB6RnoNVtgYkN92+2Wyy45MmGpF8sj0Zcs9/xtqqJVlbydF5DM3p
 qjCkuyqJRxiYkLpZCAQ==
X-Proofpoint-GUID: 0_Rs2-6EzUwUptWuOiNlc3z2vqqrbTF7
X-Authority-Analysis: v=2.4 cv=Z5Lh3XRA c=1 sm=1 tr=0 ts=699d2a0a cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=oYZBAe1WLvZJEsEo3mAA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 0_Rs2-6EzUwUptWuOiNlc3z2vqqrbTF7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240035
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,0.1.134.160:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267701-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 34AFE181B20
X-Rspamd-Action: no action



On 2/23/2026 8:06 PM, Krzysztof Kozlowski wrote:
> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
> index 75716b4a58d6..6dab0d5dcbb8 100644
> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
> @@ -666,6 +666,9 @@ gcc: clock-controller@100000 {
>  			clocks = <&rpmhcc RPMH_CXO_CLK>,
>  				 <&rpmhcc RPMH_CXO_CLK_A>,
>  				 <&sleep_clk>;
> +			clock-names = "bi_tcxo",
> +				      "bi_tcxo_ao",
> +				      "sleep_clk";

Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>

-- 
Thanks,
Taniya Das


