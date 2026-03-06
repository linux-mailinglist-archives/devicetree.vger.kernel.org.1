Return-Path: <devicetree+bounces-271815-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FqsOsNIqmlkOgEAu9opvQ
	(envelope-from <devicetree+bounces-271815-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:23:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EB321B0A8
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:23:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B808F3020A6A
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 03:22:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9F33537EC;
	Fri,  6 Mar 2026 03:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cdOtMXE1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jjlJMqpE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7201136BCE9
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 03:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772767375; cv=none; b=PM8GbwoCoHOafEvxgPbbg3vZSQ5KQXatdJza3+6Gx16P+nWow/nb5+oEGPIu+MtekUu0ZpEKuAS4ZpwuSDTz+vnJoKLBBB7UGPvvKzu0+polHuchCW3xVd0mSHw8QAx220pmJvAOoNxdqy8ZwZO28dMKGuM9dUBI4ORyWU7xu7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772767375; c=relaxed/simple;
	bh=qhKCBm17VvGNVCEd8eb18I/FqyEyctWPk6UfJsoQ9Vo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FQ6fHGxgdT19Vi6GayPH2I/3qbAhcZW3RO5j6XKJDXM/3yyU76SfkEc820i8RFzD+gkbIrLDnic7ewOlCH8FeWYrqZNwSXi5yecSFa9taEOhNoxjqdekJ9gqj4gEsNAPdUyKvt/JSGTrCikCsYOuavu9j9BdGIJoEBXgCemH9U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cdOtMXE1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jjlJMqpE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625KmjDQ3136758
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 03:22:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	00ObHD+E7m2TSNqqkJQMwTsT/KtwWgshBLMBpB6Apt0=; b=cdOtMXE1b9vuAUzU
	bL7hF2les/8fHbIrffmMh4hjt/64Iforz4WcGJFTvwS+PlkfrzE6I91oRcIGLFDH
	oS4kfVxZViX9RIxGJq8oaTM8Xd6C0eWFOwfOp9NYy3i+/6HRcqRZwex0rW+ZO+Ea
	GLCnzfi3gE4IpPQ1VsUmDdWa3CPlFTxpQIZxoM53jR7QDjx9FKN5AeezIFMSZmR2
	32SjxbnxappB0QVSmLYfYH3raF3OYOUXRx0k5+vWC4TaWO+U3RAH/UiB0+064KuB
	WLE8JpQC5xlN7+qke+0fhz8MI4DWAuqFCJt5y6ESMgJLoeysuRQ0VeUmA1l1c9tJ
	P+mIWA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq1pk4e9d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 03:22:50 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae44db60c2so53970025ad.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 19:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772767370; x=1773372170; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=00ObHD+E7m2TSNqqkJQMwTsT/KtwWgshBLMBpB6Apt0=;
        b=jjlJMqpEpiELmQxyzPnjVYLPL6Eb+Qu0w6MMzTx7h1iB3FgqeFTRMFMsqh0mCFWg42
         WmdqfvznyovtYaCniu/jEA27XxTOveI9C/INWPw9CjQYnlTVCPCUKVOeXZHayfMOgVJ7
         /kY9vlYyraLXGmt//9Jh21IpL7Ls9cCkSTXQAOgg3gi8s5s4qInPzNzQ2JqV3RckD5/P
         fvUQ4ixkJhfLAog919rjF5h3vGQBn7HfL9BddHjUHIYB1PLU1s5lKVocEueMe5PMaaNQ
         gOCzjICEheQbSSXvt780eaGaYPGPsj0Eltrp92BOXDMklV0qVcfOz04UANMYYl+OLdPZ
         oA/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772767370; x=1773372170;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=00ObHD+E7m2TSNqqkJQMwTsT/KtwWgshBLMBpB6Apt0=;
        b=JldwxxPHMqEsnnBfhpvM6g3jyu3RxS1mJTPtzGl3WUYCQyjZdY16XQb486iE2SUUSs
         L0vcPJMTIWjl0UHYR6Sp6xAHPKbPJTvdryQbYkrY3vYXzHOfUajH/fGQJEWbS7RSmPwe
         Jcy4KwRsNYu8Hataa+5JUQu/FNe0fusSK2rznqzXXpkQdUw6IFj2UPykuw9zaNHPVDdz
         FJe3O0BebW6hapD3FNDNU5llsA35IgUy1paapd+KhnFf4paiVC2ArlmvW/nRjQM9TJ3R
         1xQ8/LjfHz40fOEspxQ+JnNiUvMh84aGH7TxErQzRKyoA67zEhCfeL/x1DWZgYzZv6WC
         LV1w==
X-Forwarded-Encrypted: i=1; AJvYcCUpfa4iTdup896WBfrEFyYv/Kxf/Cor/GmfNPq7p0Nw0GUGbD59JNChA4igGOkuJJApy8gaD7frQCCW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw66+gqfTYgEuUEp8WbZqMYveRpBMV41P3k8h0rwIQ4Bf5wfRJc
	T0qCSCMgfVf1IQsuV2HLpbytLYC/cSxZmHLZjxwDyfHgcOLI+jLEnX6FvCchRFm6sAAqHLtoYbl
	3U4h2cgrzyRXjESLIM2SVg/fQUJ3IZcTSIXegwPk0NJzSelSvpJ90VrQjMWZMhJpP
X-Gm-Gg: ATEYQzwXm/gA4ehL3BpqRweaysXgitQsjSB++97FKkkRNMTIQ9ylP0g53bCSnOBe9D0
	hGnYGPaWMHqaMwUwc8vTOpqbewpdhlJb9JD0gfjC9ON15CKSCA4KMF9HUX6UmwSsg0TpU941lo7
	H67pK72X7cOIDxBgPQ7ku44EFoTbdVSPyzelGdoLAHtDLGfGaA1sd5u2IDd0A0SJorTYwmfVDVw
	n3ZJ5DmYZ6HzeRbq85jcQQCIBrZHy2De47jv+HeCS5y/FSu0qXCIBmOvh3G4mi4ovTyPpQXpWO4
	RMgI6etoZRRDiMIJDWfkj55tqw4wcom+FSN4NaedM7AGNWH9cYt69OcvIDmYeoBrb6VckV6/etg
	Zi8uwsEaCHTXSTCXhyfQwoMimLwIHIHToDyoUdhfZRa5T9KJf02w8PIPkrx7XaXIK4J8G7SQlz8
	1QOofkrVIdW0u5Pljh
X-Received: by 2002:a17:902:db09:b0:2ae:5a58:ec35 with SMTP id d9443c01a7336-2ae82532c8emr9834865ad.53.1772767369740;
        Thu, 05 Mar 2026 19:22:49 -0800 (PST)
X-Received: by 2002:a17:902:db09:b0:2ae:5a58:ec35 with SMTP id d9443c01a7336-2ae82532c8emr9834695ad.53.1772767369244;
        Thu, 05 Mar 2026 19:22:49 -0800 (PST)
Received: from [10.133.33.147] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae840aefbdsm2230065ad.82.2026.03.05.19.22.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 19:22:48 -0800 (PST)
Message-ID: <4fe25722-9ddf-4a64-84ef-441e0a965597@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 11:22:41 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 00/10] arm64: dts: qcom: kaanapali: Add more features
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
References: <20260224-knp-dts-misc-v6-0-79d20dab8a60@oss.qualcomm.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <20260224-knp-dts-misc-v6-0-79d20dab8a60@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 5sZg-pnOIRpxfd_mRPkzuUQA8hQmnH_k
X-Authority-Analysis: v=2.4 cv=Gu9PO01C c=1 sm=1 tr=0 ts=69aa488a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=vqzCb2Pq2y2ruS5fAxYA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 5sZg-pnOIRpxfd_mRPkzuUQA8hQmnH_k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDAzMCBTYWx0ZWRfX6+LLuYQcchwO
 yepKFD1uPL13fFMOB47Ll70MaYV9UnVPftg3w/2TdUYsxHuvC8F51MONlilqcwRAshJoP5Sv9g1
 sT8/+p3FRKUx5tsUn4fdbcrC+y+gYyjHsOkAo3PuatdFNFMX1CP7YLKFj317SZz7EAuz/N4Jppx
 huxZuXPp9PKwx+1K1gmHD7yqGZ5UfEDCbDMThMuhcW4ZIL1zUp8Ts0VRxGMmoCPnGEfzOe/JUWQ
 /wMXIZ+iP1zV2OHyiPN9OKG6I80QA6zBs1QFY2tOZpxmlDeBEf7o8ZPRcd6xQP8FGmjMutyCqeX
 GPsZGI7WPzSCaDtkhygk/cMHUEsnpNfxnSkZ4mPLA9g/HcWE87d4RbiZxQ12EzPwxEOALvQzhJF
 oKNO+pTIIGqSPqM7gtATM0+TTbo70yHrTIy72yVWBahnWGaFKQ6dD9HVvbn02Ya0a+T4Iy1VTWd
 lupC67FK5s/vNRxvZQg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_01,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 adultscore=0
 impostorscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060030
X-Rspamd-Queue-Id: 55EB321B0A8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-271815-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 2/25/2026 3:19 PM, Jingyi Wang wrote:
> Add new features on the Kaanapali Platform including:
> 
> - TSENS and thermal zones
> - CoreSight nodes to enable trace paths such as TPDM->ETF and STM->ETF.
> - QUPv3 serial engine
> - ADSP and CDSP with fastrpc and smp2p
> - Audio(enabled on MTP only)
> - Multimedia clock including display/video/camera/gpu
> 
> binding dependency:
> - adsp/cdsp: https://lore.kernel.org/r/20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com/ - reviewed
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
> Changes in v6:
> - rebase deconfig patch
> - fix audio node order
> - Link to v5: https://lore.kernel.org/all/20260202-knp-dts-misc-v5-0-02de82bf9901@oss.qualcomm.com
> 
> Changes in v5:
> - fix audio node order and cambistmclkcc reg length
> - add reviewed-by tag
> - Link to v4: https://lore.kernel.org/r/20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com
> 
> Changes in v4:
> - Add hot trip at 120C for thermal zones
> - Drop smp2p-modem node
> - Some codestyle fixup
> - Link to v3: https://lore.kernel.org/r/20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com
> 
> Changes in v3:
> - seperate patch in function
> - pick remoteproc/audio/MM clk patch
> - Link to v2: https://lore.kernel.org/r/20251225-knp-dts-misc-v2-0-a8a8a31fd528@oss.qualcomm.com
> 
> Changes in v2:
> - picked latest coresight patch form: https://lore.kernel.org/all/20251205-add-coresight-nodes-for-kaanapali-v1-1-d3d2099b9b24@oss.qualcomm.com/
> - Link to v1: https://lore.kernel.org/r/20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com
> 
> ---
> Jie Gan (1):
>        arm64: dts: qcom: kaanapali: add coresight nodes
> 
> Jingyi Wang (3):
>        arm64: dts: qcom: kaanapali: Add ADSP and CDSP for Kaanapali SoC
>        arm64: dts: qcom: kaanapali-mtp: Enable ADSP and CDSP
>        arm64: dts: qcom: kaanapali-qrd: Enable ADSP and CDSP
> 
> Jyothi Kumar Seerapu (1):
>        arm64: dts: qcom: kaanapali: Add QUPv3 configuration for serial engines
> 
> Manaf Meethalavalappu Pallikunhi (1):
>        arm64: dts: qcom: kaanapali: Add TSENS and thermal zones
> 
> Prasad Kumpatla (2):
>        arm64: dts: qcom: kaanapali: Add support for audio
>        arm64: dts: qcom: kaanapali-mtp: Add audio support (WSA8845, WCD9395, DMIC)
> 
> Taniya Das (2):
>        arm64: dts: qcom: kaanapali: Add support for MM clock controllers for Kaanapali
>        arm64: defconfig: Enable Kaanapali clock controllers
> 
>   arch/arm64/boot/dts/qcom/kaanapali-mtp.dts |  240 ++
>   arch/arm64/boot/dts/qcom/kaanapali-qrd.dts |   14 +
>   arch/arm64/boot/dts/qcom/kaanapali.dtsi    | 5119 ++++++++++++++++++++++++++++
>   arch/arm64/configs/defconfig               |    4 +
>   4 files changed, 5377 insertions(+)
> ---
> base-commit: 3ef088b0c5772a6f75634e54aa34f5fc0a2c041c
> change-id: 20260224-knp-dts-misc-fd2eee5224da
> prerequisite-message-id: <20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com>
> prerequisite-patch-id: afd581c1ad048b1b9d5cb13cc667a5efbdfd1bad
> prerequisite-patch-id: 554f737dd82cedf873d73db34d735c95c28b9cd3
> 
> Best regards,

Hi Bjorn,

The whole series has been reviewed and the dependency are clean, gentle ping for
the patch apply

Thanks,
Jingyi


