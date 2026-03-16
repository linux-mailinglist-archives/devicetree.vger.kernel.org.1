Return-Path: <devicetree+bounces-276345-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAQWBYE+uGmpagEAu9opvQ
	(envelope-from <devicetree+bounces-276345-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:31:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7941529E4BC
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:31:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96B5F324C5D7
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4603D523F;
	Mon, 16 Mar 2026 17:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FbePiy9k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZqMQmgIE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8713D47B6
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773681652; cv=none; b=RRnlqhLrS60idpewkKEjXY9wmUDWsq/JR/f3h2d4B1Md8ImhaFY0s5zDOQ9cuyS6Izfcc7gBMISHjo6rc56BOToPKTEuD3Tpj3XEsEr1Zico74lWpilNJa65DaW5d0sKXRwS9h9tgPHBiyc1GUd7Sv3CXBMvA3zy7txwUPBYink=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773681652; c=relaxed/simple;
	bh=kJRbHz/Kmj9/f+jsu2tmX0LBtNG5gMiZTjc2ERT1T9w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TtsM90s6+jzy6vcVJ0CyRaPbJ/xE2TmnONnU//CO/ICPAHsetzIw5WDAM6L8QRe2IUfObafrLfxSkcwxD5oRA3SggsbnlKQnikq2mbv1/7A4zEn092S/jydRZwUkAcZCozGxw8YNGWUaV1d5XF7F6N1Wy3zXE9ZR8sjicNU4jPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FbePiy9k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZqMQmgIE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GDC2BN041567
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:20:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cVkiGJfb/hoYluJEhR6stCXpGS4CRK7PiadcKeGt7G8=; b=FbePiy9kJj9lOHrF
	XcW+/dz07xoPL/25KQtRiv41mhMvFbJ09Re4cNaR3ZlzE9wrpaXlOW+EpKs3Q8Yx
	PnvDp3FYknD0a9yXOrOEDFRyRWWcoTnmq1z10M1bRDmH5XrBoQ/8Ew5K5XYB+U4M
	FHaMBlyJaxB4J0VdqwD+CGY4VlQI1MoWUm6ov6yrOSOa0jJMt1SjzhlRw/hA659g
	FJz+diGbW14C2T00EezGx89qB2zdzeCD/6y7pe1QiGN5vptGWQZIEtm9Adh7sWNR
	i5uvKk3/9zb6t7hzCxHe33sf8QQkcGSaz22G6bpx+dcWmM6Ed1orcJWRQz45igde
	kmPakQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxdt8274t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:20:50 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae6dd98043so54235235ad.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773681650; x=1774286450; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cVkiGJfb/hoYluJEhR6stCXpGS4CRK7PiadcKeGt7G8=;
        b=ZqMQmgIEwdZYyjTmb3XYzf4cXyzC/ByQdKWccNOxxz3xOOhlAiSYDmJuTJEwpVnM1z
         Unary135iyizRs5HU7pixNX+mZdAbMRuHCzocHy0Ul5MdtXokSwu1OzgPfB7DIkd4BO7
         xm66dTNNO+7D9LwPpwX3r9CXrgSgHSR1El8kMm8ijTzSJdl76qDF9AusLwxiY2HlvwyW
         0JyoqxF3WGdqQDI+nNhFFljfS3DVTyKQMyNSzV1vcuJcAt7/I8R4lV+JxU0rsBJgCY7N
         gblftfGFe17Wu0r0/0PHOkVj3glIFidrZD3voRvThvk2DD2o8eaG09kkNtsTPFCYmKP0
         VzkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773681650; x=1774286450;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cVkiGJfb/hoYluJEhR6stCXpGS4CRK7PiadcKeGt7G8=;
        b=KMrLuKQUveYb8CXk67D2pC7enyDXEx2GLbkyXHop/gbVfF5GSw7cLtztTtgCYtGGub
         WsOZqc+jOh3wkvWePszCm17Dhm9PcSHz3HByk58UFGZ67QcMn5QNxCqDPzn8kFRvmrzc
         sbSWrwo15q8820Eko5BbIPimN8gVTqgJRyzf4hEMxVE4TAZ2WTm5rmAJAkNM/nRM75bX
         eUXQ2VZQBEm+8H9e6sGcNrpSGc+FktKeS024U1q2qS1/NE8E6wSfGjzfBMdIlFwUyJHi
         4PsTKNd4LkOMQ91nKTokrhmGVz8Pqu7pX9UXexzMVOw9q8jrTV/LixTRKwBW7rBKV9kh
         pkBQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6symmQpLJ4sjvPprT7yowIQmi+KKXmzPN6ByK/A3uPXUjjPUjg0ZY5Osv4jHLJ2ht2T6Hi835X9OH@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx3zskbxs+kNENl6n48l0AAJ43nsTcyMVqHoEnLhJCTvA1wjPY
	jsY1Eizhb/LXYu9pNCkQMmD35yDIR9t7XiNmbsC7pjZLl0OMX9r95aH8gxSMvOf98ZfbRCC88n+
	wcVUo14xHgfRh+j86mQxL7b7yC8ewTc7Z/Br4xK9wo839IVF5y3cPz0E562W1WZSH
X-Gm-Gg: ATEYQzxKCcwj79Ja4ww0lKvwYplfJxs59/GvnDsiFd7ZZJJH3rT+B/8Xi2vflGVEvT6
	6DaWhY1UuW85mjLK84WIYrAnjY20qYQ0yRPRZ5O8cVfczhlS2Vw20c3AOn8JWgn+eYzqqh42kNG
	PGrY5JJka20W8uaiuoY3KxEp6rkvA+L0WpUEyaAeMcAr+EGF0r3pxiIoBHJphubnq6SqklTjgPm
	9/nUNoTFqv/LB+WYVeYuJle1X2M8ZcShcKANOSlQNPoxDYwo8r8jSWcZfrNloXT3Gp5OFBgXIM/
	BxUQ6QYHOvrJ7lZNd/lz6mcL5qqCA0qdw+U/QOoR7zQ6kdpsWHxxk+xO1TwYrls4fbue0/CJPf0
	ETbASPB1y8uVX3PHkEGd8KYYqZmk18uNnPZNLiioYbg==
X-Received: by 2002:a17:902:ea09:b0:2b0:4ec8:fb92 with SMTP id d9443c01a7336-2b04ec9004emr69176335ad.39.1773681649579;
        Mon, 16 Mar 2026 10:20:49 -0700 (PDT)
X-Received: by 2002:a17:902:ea09:b0:2b0:4ec8:fb92 with SMTP id d9443c01a7336-2b04ec9004emr69175985ad.39.1773681649093;
        Mon, 16 Mar 2026 10:20:49 -0700 (PDT)
Received: from [192.168.1.8] ([101.0.62.48])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece7ee6c6sm116230535ad.48.2026.03.16.10.20.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 10:20:48 -0700 (PDT)
Message-ID: <5bd9b257-40dc-4ed4-88f7-b15b934fefa0@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 22:50:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] platform: arm64: Add driver for EC found on
 Qualcomm reference devices
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <20260313-v04-add-driver-for-ec-v4-2-ca9d0efd62aa@oss.qualcomm.com>
 <aaf2c23c-2c6b-45e1-a2a0-096249ea0d44@oss.qualcomm.com>
Content-Language: en-US
From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
In-Reply-To: <aaf2c23c-2c6b-45e1-a2a0-096249ea0d44@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fUg6NISbNDGjLrzFDuSlRxq8cpqTJZ01
X-Authority-Analysis: v=2.4 cv=CKInnBrD c=1 sm=1 tr=0 ts=69b83bf2 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=+2ldRcY3HLWus9HqRSG52w==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=8WFAAEkrk-lUUCZj-DcA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: fUg6NISbNDGjLrzFDuSlRxq8cpqTJZ01
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDEzNCBTYWx0ZWRfXyhh7WvwEz+Y8
 vrIC5oK6U+PAuzEhsMuAO6k9+WyNHYzITVRfIvB2Wm4or2g1e/O2B28BB8FhS8jP0Xya6VPi/nh
 2d/+amSRzed1ei5me2X7SiD3J8Wf6UFJHSXO7mGCaVnDan8AsDGSxKDgqU204nnK0eZ4jST/a+I
 p7kHl86J/TUKU+jOkiH/QDvKJJUxMtO33uIkMVxRroDurkabHyQRAHzTWzqT7yUzZIB3tKg+30f
 BQCkdy5DkBrDL/HPSAtK07v0cVpiB0mSWRfpUJDeIh2JI9UmCVIucUarvthsWgvywcv3oUNWa1I
 UDbzH2iDHNb5pBrry9UqLwdqc2W0s4v4SKdi+hC/H1S5C9WpXTxtUKa5cbUprAKk9ahEz5qOrAk
 nrbF3eZE8V1K7KW7JhyxM584C15vL3bI/3PyWzg+yTZ6WB4kbd4SP2H4xi6M/fwU/x0fOcwuiQa
 cD4mMlokiZndA0gYDCw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160134
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276345-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anvesh.p@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7941529E4BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/16/2026 3:59 PM, Konrad Dybcio wrote:
>> + * | Offset		| Name		| Description				|
>> + * ------------------------------------------------------------------------------
>> + * | 0x00		| Byte count	| Number of bytes in response		|
>> + * |			|		| (exluding byte count)			|
>> + * ------------------------------------------------------------------------------
>> + * | 0x02 (LSB)	| EC Thermal	| Bit 0-1: Number of fans		|
> qcom_ec_fan_debug_mode_off() documentation only mentions values 1/2
> to be correct - is that the case?
> 

Yes, qcom_ec_fan_debug_mode_off() will only support values 1/2. The
above documentation mentions about number of fans available, max being 2.

>> + * | 0x3		| Capabilities	| Bit 2-4: Type of fan			|
> What types are there? CPU/AUX or similar?
> 

This is fan vendor identification byte. 0 being invalid/not present.

-- 
Best Regards,
Anvesh


