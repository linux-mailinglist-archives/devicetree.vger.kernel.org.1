Return-Path: <devicetree+bounces-272855-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGMfIOerrmntHQIAu9opvQ
	(envelope-from <devicetree+bounces-272855-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:15:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D75237B68
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:15:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A21B4301EA08
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93ABD399033;
	Mon,  9 Mar 2026 11:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VdFHlEnE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fnx31/4j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBBB39A07A
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773054807; cv=none; b=bdTFBVU7RZE3n9aB+U1ILt/jzUhdVvwWyPAMGfEHKgyFMN7YLFgxNFFFI7XPHD1A4whHq/hZwsbna3sOyy1RL0GdcaTqvXX0Jgp78nmM3LyHeQEihDeDbHw/7/5EMxuWiQ0aGrqp4+j5qbl408kmq61UjBwv/zvI9Jlcn7YCYTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773054807; c=relaxed/simple;
	bh=aUGGc1R79TGDRJpaHjpkPVJWkO+5hdvgG9goHILcC2E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pthLyHpMTik+Zfa43ftlRVBS/a61Bw9ObhtUYziHAlzpd7g3TLpEe0qA2opBKgmJ6xstYHivdxPBfTdyegIQZtvpgW5LWdfknbiEhpjWFP39N/0NWRCkk4ucHcr5nVJkLR25zmBkLYpt97eB1Sk3a+yGZ8v97yB2w261AQUePDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VdFHlEnE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fnx31/4j; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629A6dsG2195107
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 11:13:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=swzqftm9DT4
	OQqebBu7PwB37oXOhnBtbstH/+M6fp3Y=; b=VdFHlEnEP5W7a/lwqA5P8Hv9DFv
	UX+PYfL2enVYwv6T7difwNNUgBTgZsEifSasj/hQHxHT6kEZ58etrkKOACYTd8Iy
	o6TQF18z+V/51qiRXWvwfYpHGQhbttyFi52Ec9chfb56X87LYKXom0azEiE2U0Fm
	EHVlTqP20kgGv9RmgoHW9yleLIdPaLSFI/SeDgZI/JOcy6Ilu89d9KM9GJ76+Qaj
	XIdVncq8LVKhaV7CYdhoiFpKvb9zPMhwxmGDGCFyUE13OsWPCI5vBdG+ftR7nbSb
	X0S6QIaJuLCotHk/7R86IF/XQson1T2DSFfkh62L0mxo9s8tjeXEUyc0skg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csv5u86u3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:13:24 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae4f27033cso81405375ad.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773054804; x=1773659604; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=swzqftm9DT4OQqebBu7PwB37oXOhnBtbstH/+M6fp3Y=;
        b=fnx31/4j9E93QPcUeM43XWduaiZYAp6dFn43Tq2cmRc2N4y3tdSTju7+CtgRLpoQLO
         SjqwhQda1X4fO3ovrYUOpXpyUmTkbXio5L4QhCrZ0wj2Hm92eBPaw4CoDE+1fLl+a7zG
         1+5qXUYuIPbhNPSpYglJ80SweMj7qdWJ5Z5QDDn8echNsOAqzGPARFda1L27gnKZqWjq
         rHEtDpUyKCr+1WBWN9pO+JO9mKpLwYgQ/9ycrgPbw1LXMDJyKg8iCptUhosRNC6TE05U
         REbXL2YAgYExMJaTDunAMlZcLZErE6G6MDyD9SRvcKn8ltakqHta13iuEMXUv0C6g8wl
         nL0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773054804; x=1773659604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=swzqftm9DT4OQqebBu7PwB37oXOhnBtbstH/+M6fp3Y=;
        b=hiidcHKC67vBj7ao6J2yNiol0U/soXF85kwHudV5nrINs5Ff9seI+64ozxUof7hIVq
         RDicYjyhli2dR8qFGfFzDOdKL4HFQ36i0ZppSaa+yGYWpoP95VWNOrjcwZH0YFmITe8R
         06nR3RYZKvIGeiRIAa/LX/000gz442lFAtFXvE9lDwbMPQBf4ViYzJhyoNbqiPNAJw7w
         JQDaUcl9gZxdnZjiUUlHbZOAwzl0dsz+r3rxmUTCg+RLGL49M0Kzc/NoFjy3Lkr/nU/m
         qFG1oyE1ieh9R7IB/1EX/z4Elea8sLLscDHUUbOEYtWI2Sy1yxVIF6kO9PIAo5+UYdvM
         bVmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkUus5UPRcuJ6c8pztvXwsBH6OG2XpSnOYbsa3tHwkyOgGuDlcVM+JknbjdGSacb9lMA/sUp12DgXV@vger.kernel.org
X-Gm-Message-State: AOJu0YzH4JaRIf2D9sF6kWDTmD9SIzq8JW7TnUpcnzAMkF/g7i2tPXd+
	x44L/cpi+aDINcKPQiFnHSvqZzO1huGTgT/PqLZ8tfr1cMxZNg84mTQuEOgEMDB22OmXom7pfWg
	22pturQB70EYOajWc1J3cI+5+BljW/vUTn4285slvLUe9JdcRbLHV0BvxleqJl9DHX/fe0LoH
X-Gm-Gg: ATEYQzxDvOD8O7nYgmp1VMrJWHz1rIe3PIvD3E1eqY03zi1uGGCtWAKaLR0E/cwpSmH
	gXoBLzFTccmZb8OChHMgD7tTMXeTtrGo51TAzbm6ciwjjlLWvczGh8NDY2m24KI7rSsRdDrmZ1z
	JYJnybJt0+Ng5XcjSr23Dwv+R5VRc18LMOnNmp0ZMsU7TcA86plKcqoc9aMj2EmgoRWKt0Yq6Mh
	KHpCSByIykC+gyFx13wnsVO8RcZVZuYkzVie2UgzujC0mg5sGhghE4PXPuf2+SIkgjnxeRpg8+W
	T1pzBn6DKWTvDCmlup2ZwSPTB6ovZhNdykWMHYaGA+6KEMna89jieyP6SrKhcss68a9Z8uxc2kL
	tzw2EPbJVjsupjjbKLGV6D7sXa/2MuphI/4KWzHho5IpSrFtQAq2mzo3EDg==
X-Received: by 2002:a17:903:2b0b:b0:2ae:4f2c:624a with SMTP id d9443c01a7336-2ae824b8531mr100399655ad.54.1773054803522;
        Mon, 09 Mar 2026 04:13:23 -0700 (PDT)
X-Received: by 2002:a17:903:2b0b:b0:2ae:4f2c:624a with SMTP id d9443c01a7336-2ae824b8531mr100399355ad.54.1773054803060;
        Mon, 09 Mar 2026 04:13:23 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae840c9967sm145405925ad.90.2026.03.09.04.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 04:13:22 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v1 2/4] ASoC: qcom: qdsp6: q6prm: add the missing LPASS MCLK clock IDs
Date: Mon,  9 Mar 2026 16:42:58 +0530
Message-Id: <20260309111300.2484262-3-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260309111300.2484262-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20260309111300.2484262-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: l-ZuRX10YgAe3gsfLhV57hfNa7t7pMF_
X-Proofpoint-ORIG-GUID: l-ZuRX10YgAe3gsfLhV57hfNa7t7pMF_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEwMyBTYWx0ZWRfX0imxhr16K3yN
 zWQ/ar4ouFsOsO3cNP3KrEbe0DmtFCJufIV96cs02Rai2Ja69Kd7DRNcI+z+a0fOQD2SDkGb+j6
 zZ9PRvJEpPdukOsOwwv1M1Az9bJPL9Ney5NSSYWxc8NMnrz86YiRSAAZeoShACI0bWeUQWkr9aj
 sn/05wM3lN4CFGClomNRZpAJo2/Qd2C4RIWcXy03D0nBUI82PVHG1eM15NhugkUYnxVeDE9LygB
 rn349wAu9I7+W58TDyP3oB1KjkXm1zHFT8wZHK025EXw01oggeNegyG5tP4kLhCpc3uVxE7uHmd
 RAnnpXM2Whj4XqxdE81m5N4tUxPFWmlFSpdc7U9qzJJ/2BRlkXq42Bst5BqELNQ2j/1knidXr4/
 bZQ1/+U58pKn8mEvGMat8D2SuuIxfxelrM9GOeeEf40E3byPYvMKajUR8jhtDQvfT/++MAn7XBz
 oG46UUsyuGFgbJDUbTQ==
X-Authority-Analysis: v=2.4 cv=Xr/3+FF9 c=1 sm=1 tr=0 ts=69aeab54 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=xa-b9-zz7eJBtx3xZkMA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090103
X-Rspamd-Queue-Id: 80D75237B68
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272855-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mohammad.rafi.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.994];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add the missing LPASS MCLK ids for the q6prm ADSP.

Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 sound/soc/qcom/qdsp6/q6prm-clocks.c |  5 +++++
 sound/soc/qcom/qdsp6/q6prm.h        | 11 +++++++++++
 2 files changed, 16 insertions(+)

diff --git a/sound/soc/qcom/qdsp6/q6prm-clocks.c b/sound/soc/qcom/qdsp6/q6prm-clocks.c
index 4c574b48a..51b131fa9 100644
--- a/sound/soc/qcom/qdsp6/q6prm-clocks.c
+++ b/sound/soc/qcom/qdsp6/q6prm-clocks.c
@@ -42,6 +42,11 @@ static const struct q6dsp_clk_init q6prm_clks[] = {
 	Q6PRM_CLK(LPASS_CLK_ID_INT5_MI2S_IBIT),
 	Q6PRM_CLK(LPASS_CLK_ID_INT6_MI2S_IBIT),
 	Q6PRM_CLK(LPASS_CLK_ID_QUI_MI2S_OSR),
+	Q6PRM_CLK(LPASS_CLK_ID_MCLK_1),
+	Q6PRM_CLK(LPASS_CLK_ID_MCLK_2),
+	Q6PRM_CLK(LPASS_CLK_ID_MCLK_3),
+	Q6PRM_CLK(LPASS_CLK_ID_MCLK_4),
+	Q6PRM_CLK(LPASS_CLK_ID_MCLK_5),
 	Q6PRM_CLK(LPASS_CLK_ID_WSA_CORE_MCLK),
 	Q6PRM_CLK(LPASS_CLK_ID_WSA_CORE_NPL_MCLK),
 	Q6PRM_CLK(LPASS_CLK_ID_VA_CORE_MCLK),
diff --git a/sound/soc/qcom/qdsp6/q6prm.h b/sound/soc/qcom/qdsp6/q6prm.h
index a988a3208..8296370e3 100644
--- a/sound/soc/qcom/qdsp6/q6prm.h
+++ b/sound/soc/qcom/qdsp6/q6prm.h
@@ -52,6 +52,17 @@
 /* Clock ID for QUINARY MI2S OSR CLK  */
 #define Q6PRM_LPASS_CLK_ID_QUI_MI2S_OSR                         0x116
 
+/* Clock ID for MCLK1 */
+#define Q6PRM_LPASS_CLK_ID_MCLK_1				0x300
+/* Clock ID for MCLK2 */
+#define Q6PRM_LPASS_CLK_ID_MCLK_2				0x301
+/* Clock ID for MCLK3 */
+#define Q6PRM_LPASS_CLK_ID_MCLK_3				0x302
+/* Clock ID for MCLK4 */
+#define Q6PRM_LPASS_CLK_ID_MCLK_4				0x303
+/* Clock ID for MCLK5 */
+#define Q6PRM_LPASS_CLK_ID_MCLK_5				0x304
+
 #define Q6PRM_LPASS_CLK_ID_WSA_CORE_MCLK			0x305
 #define Q6PRM_LPASS_CLK_ID_WSA_CORE_NPL_MCLK			0x306
 
-- 
2.34.1


