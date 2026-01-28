Return-Path: <devicetree+bounces-260248-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNdKJivNeWmOzgEAu9opvQ
	(envelope-from <devicetree+bounces-260248-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:47:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C589E5BC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:47:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9E048300A8F6
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 503B733B6E1;
	Wed, 28 Jan 2026 08:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Nil4uXHc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S2m4mNLD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88003385B6
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769590027; cv=none; b=UU1kmT8NAHMADOYfriBzuYhPlqeEMND5kLQ6zy8o7Rxg5egtFINXm8shcf0xRlBu9oezsXN6wra7FvBpeLi1JoA5I6MOAkGQwAtntl+gXtZPEep3WRUt82funNa0OWBcCrdPQ9zsa/XEkuH9JmZP3UQ0N8UOV/aHiyChNjvfX6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769590027; c=relaxed/simple;
	bh=e3TRfsvo3h7etqIQP7dqbHgjd/404D3QWc/LuJuSsiA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g6x0GOpR2Bf8huy2s307PKNNPkREQAz1KILPNvUvStNPFVXDegBHAi0PuBIjqp0tsath6Fek+CGVodWa4/0z5NNWku4cs33//+6534yyDXSeWR679FGInx9ZflDZ2jpeg4DSv8FH4fpNAHGWL3gTiLarzG0MrbRHBIZPqKhI/e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nil4uXHc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S2m4mNLD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S3KUCk1334235
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:47:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+peXoFtKe85BwjRu+lZhP+ZBRPDUzqAfBEqGFaDyxhI=; b=Nil4uXHcabl/djks
	KozDwTq+1ko1tTPjsRgqoIClkS0+4wyY7M9SnBZSxra1N6cuyTjYqli1AxmVPopz
	4FPueqd/79OCjb8lPPOya8iXmvFcVmGrjrYdF97+2qITJnv0BFdKNyimwo9XNVHa
	pv6GcANdkmHpN2Jaa5o3UGEYkJIsRzORC/Met7oCU0OPLF8PHwa8v5cHp8cU8A5k
	Us5fwS8rXpIrd56JGhftDBbpIW5DmpYeBjYiadr9hpmFysUTJ+UUHpgDvx7dYeAZ
	hyJtqJaOkIh4r55zqfMgugukJU3k0mrtLZ/Y9/bl3ZpeTtJdnTnnZ7VkTL2qHWNm
	TjhWzw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1dftqaf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:47:04 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a79164b686so72650745ad.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769590024; x=1770194824; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+peXoFtKe85BwjRu+lZhP+ZBRPDUzqAfBEqGFaDyxhI=;
        b=S2m4mNLDl/M2uEFnDApmgYajDM7ODgUV6RxK0WAOHtwuT+KIb+CH9BfyXLM8k6JtZW
         vfVqutjoDD+Jo3QvDzFabI0Yu0pFYnMz3DBPRRhWy4qPZ8EdnrVQy7fnHX/3IEQm+4Iy
         XWlwTGWxuz/vqxG02Aq3rUnL0diyJF+Jxg1arFV/iDmvqmtQaLrdDHYrzlNZoSAn3dRS
         qIFMknGyM68k7/aGLDLdKPiSkinjyLnU+2ewMKhsx7RJ3kUndCpUglo/ojkbim485cG0
         9+WnC5KnCp+E4+r5KfZvKUEQj6j71JOOdmDEQrvS7/g0UuvMfOD1B5wXBn/3Zw6R5lGx
         r8Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769590024; x=1770194824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+peXoFtKe85BwjRu+lZhP+ZBRPDUzqAfBEqGFaDyxhI=;
        b=KCEkTaXMxwA55fEZkXVnE8LO3NNzoGULL04xPeBx+TVFhh67ZqCd30QpRmbhJfczeS
         C/4D2kAXzvP/mGlxIdRNjOcKETNl6fdl7p7RB6ab1EYFq0MOKbEpBjdj/pPYs9vSi1AN
         4/cWQ6rWz43h9ctVOsYQSG9P8TRmPgNfvCuTcmR/lpP28i9Wz2nRAF9enbtxyFLA4By0
         UcGeKbVO1wkdCIJKpzGfhRM/2phKydZRviLPTmpV5VWQqYF/0YoxnHbrShfGker1wYaT
         CjMJvrrvJdrnWxmf8hLHqtBxLJQ6UNI9geRkkHSYndx8lgPaRLMqj9JOd0GpMTjp0H+8
         +WbA==
X-Forwarded-Encrypted: i=1; AJvYcCV7JCKLPs06Hlp3J+h7+ZlNsB1Z537aAOD80qrXEAhznNuVQhlDUPLZZprLPLNRVNduM/q7CMgXCdZJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzeF50/ZwNtiNcWai0YYRevZtIOfJ2MmqUD9/nX2M2Q/alEpkSw
	NNGMwo0vwSZ4ILAUdu563l/PftFEVUX8zgbuJ9dlMIFM/JwHt8aeYWxiv6OJS6eoLY9egtNUDT8
	YNYgvGpdVI06S+L7DeEk3eOGK0a8BU+95JBvf0W6PAgFgMULJyWXW4fXgQq21Yg5j
X-Gm-Gg: AZuq6aLMeKAB6CkojGMoX7mCd7f3H4ASpc+EM5LWfhGu5ANTqSHMINZZRyEvKBrINN0
	+pdEOwmA7XOOVxgCHgM2MS8gNW4w2w6Eq1RHDqj2lTNMdxUUNaSTPqkE6xjXE2DbDZvlsDtBKiD
	UoCzawF1WdQ8A+pwgZGcmzmQNRL1H6VrMi6AP/IPppL/x8lNbtTLZgmPucLEi1l60vEMZuhfHe1
	ixN6EvfVT+BzHVyOF+5qPaE0VLzo0ayMU5DIsxx93g+lBr7ggdeLTi4r/OrMirRC25iauBd5abv
	JI6Wp6i5r7PbuLYoz5Dkb00uGDQarOVm6SKr4AoJT5wv5RXGLlvHZLJrFzw9R1+2J6ohWsPOf+8
	mPFYGUIlQuUB7klhHubFbn52VOq97q/KmeD2lICcO4ByPH2I=
X-Received: by 2002:a17:903:37d0:b0:2a2:d2e8:9f25 with SMTP id d9443c01a7336-2a870db7621mr49442075ad.33.1769590023172;
        Wed, 28 Jan 2026 00:47:03 -0800 (PST)
X-Received: by 2002:a17:903:37d0:b0:2a2:d2e8:9f25 with SMTP id d9443c01a7336-2a870db7621mr49441725ad.33.1769590022629;
        Wed, 28 Jan 2026 00:47:02 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3b1esm16263075ad.63.2026.01.28.00.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:47:02 -0800 (PST)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 14:16:42 +0530
Subject: [PATCH v4 3/4] ufs: host: Add ICE clock scaling during UFS clock
 changes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-enable-ufs-ice-clock-scaling-v4-3-260141e8fce6@oss.qualcomm.com>
References: <20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com>
In-Reply-To: <20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA3MCBTYWx0ZWRfX5wJE/NWFuUMR
 0yGxc+FLVRc8+kvL2iREWgWg5OrBkeENbUvDHSHY9swcUhdhocUvIlerEKrcOxgETUGQNv+bl/c
 SyPPvlq0Q5vvA0PlCJ7eR+UuJpUVsLw07zVJGaslNTzwLRSu4rlIOpTPHCjqVl1MMB+133sSEgY
 6eYpGQ5c8Pu8CtzB2RaTacSn7GObBI7q9TlS/COWE3RyjJdwGx2KdE5exsiF6MnrC7F6Dux/Lzg
 oSlHB4TDCBypW0uicc40o+eBqHPt/aI5262bQc/V9A8AO7q6E0ntMFRqU642f98lSllMW8khSMG
 BE1S8n61BHbu+KB/bCWr7J9kJxyw30MArreeyBHRGUk/xIB2ChBFC+s0EILBKZN1ge45TFcbfw6
 kXVWh2TOJy0Sc+ocKD9hcz1aGmJBwOu60CKsM1OF3OqbcbuPLGWJJrsPJPu7dVqRLygBa4s71K7
 zxPtSL6kvDV2I5ARtbQ==
X-Proofpoint-GUID: 5TV0TjzBtDgeeW4skbBta_8CemuF6pRn
X-Proofpoint-ORIG-GUID: 5TV0TjzBtDgeeW4skbBta_8CemuF6pRn
X-Authority-Analysis: v=2.4 cv=YeuwJgRf c=1 sm=1 tr=0 ts=6979cd08 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lzHOrk3F_0XHYG_XrgYA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-260248-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 82C589E5BC
X-Rspamd-Action: no action

Implement ICE (Inline Crypto Engine) clock scaling in sync with
UFS controller clock scaling. This ensures that the ICE operates at
an appropriate frequency when the UFS clocks are scaled up or down,
improving performance and maintaining stability for crypto operations.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
 drivers/ufs/host/ufs-qcom.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
index 8d119b3223cbdaa3297d2beabced0962a1a847d5..00cb9cde760380e7e4213095b9c66657a23b13ee 100644
--- a/drivers/ufs/host/ufs-qcom.c
+++ b/drivers/ufs/host/ufs-qcom.c
@@ -305,6 +305,15 @@ static int ufs_qcom_ice_prepare_key(struct blk_crypto_profile *profile,
 	return qcom_ice_prepare_key(host->ice, lt_key, lt_key_size, eph_key);
 }
 
+static int ufs_qcom_ice_scale_clk(struct ufs_qcom_host *host, unsigned long target_freq,
+				  bool scale_up, unsigned int flags)
+{
+	if (host->hba->caps & UFSHCD_CAP_CRYPTO)
+		return qcom_ice_scale_clk(host->ice, target_freq, scale_up, flags);
+
+	return 0;
+}
+
 static const struct blk_crypto_ll_ops ufs_qcom_crypto_ops = {
 	.keyslot_program	= ufs_qcom_ice_keyslot_program,
 	.keyslot_evict		= ufs_qcom_ice_keyslot_evict,
@@ -339,6 +348,12 @@ static void ufs_qcom_config_ice_allocator(struct ufs_qcom_host *host)
 {
 }
 
+static int ufs_qcom_ice_scale_clk(struct ufs_qcom_host *host, unsigned long target_freq,
+				  bool scale_up, unsigned int flags)
+{
+	return 0;
+}
+
 #endif
 
 static void ufs_qcom_disable_lane_clks(struct ufs_qcom_host *host)
@@ -1646,6 +1661,8 @@ static int ufs_qcom_clk_scale_notify(struct ufs_hba *hba, bool scale_up,
 		else
 			err = ufs_qcom_clk_scale_down_post_change(hba, target_freq);
 
+		if (!err)
+			err = ufs_qcom_ice_scale_clk(host, target_freq, scale_up, 0);
 
 		if (err) {
 			ufshcd_uic_hibern8_exit(hba);

-- 
2.34.1


