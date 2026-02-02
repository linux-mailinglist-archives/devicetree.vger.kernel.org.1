Return-Path: <devicetree+bounces-261676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AM48E/FTgGkd6gIAu9opvQ
	(envelope-from <devicetree+bounces-261676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:36:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E20D0C9341
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:36:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 15AD13005A99
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 07:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E2502BCF45;
	Mon,  2 Feb 2026 07:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SKvsvltF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TdY+gCrf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C95299AB4
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 07:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770017765; cv=none; b=EkR9LvuTyxqn7IYq3Wbf5Z6hyX6fr48TCFzRCdy8DWbsn9w2aM8MmUxNjeDboY1/Gp/KrmkPoB7O0nO208zI1qeJtNSU8jQBKmfIfueh3TbGmVuLIhXfm2Mx3gEPh6oCr3cs89qaobXQKS1BapYrKndFaF8rVW2qVHNzNVkC4pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770017765; c=relaxed/simple;
	bh=+XxOPqOL8Sz4kIMwBSwZEDo6eLF9WV07OksEG35kIAg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m2si1HkJqjCMZiR1+5UkhiwC0CK/0q1IaLXFo4nGfZD3ttCPU8vo9nHLnGSnHAnuZ1igyVYyZBdtKVtlq2wy7kgJbewlATO7pTAREOzCBQ/LbTFlxe1gvym6Tm721dV88aPgUUY+d5icJOMbdWjIIlGHAhmwhB5izB2iOiZGiZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SKvsvltF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TdY+gCrf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611NQk461335376
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 07:36:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=e+jQxJO0dnS
	dAt0rky0l07ozz99OWCx4Kw8JeM9fu7s=; b=SKvsvltFIMSB0WSk2zHauA4IupX
	2EOysLOAgCauQKb1hPBO7/5isx9qf0fLD7fHRrSgNKP3oOKvGbxRCKTr4FhUECpf
	ZnX3r5oo02Eugy2PYiL3qiuQvvaZGZidjbvTlCoQnp6H260kYTIGvIw53vpRSAvS
	PXI9Oo8zjVE8LZE2Ki2mINJK46FhkH1kbOac8PLqh+nHwrbaBUgn3jgeDM6Gv0uz
	HKjfjdj1agJW5v8vfDnG/95QV+A90WmROGvZGNcpKX1Mf825RSYjODhU+e2ltnlV
	OL2+joySwf5nyw5pU36s5daVJcMLs3do0Crs/MuKcp/2UHItOU4eCycfqXw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1as0vf37-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:36:03 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c6310f81285so7299220a12.0
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 23:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770017763; x=1770622563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e+jQxJO0dnSdAt0rky0l07ozz99OWCx4Kw8JeM9fu7s=;
        b=TdY+gCrfyzEegmL8u2kzC9AjYYyI+PqY8TvVb9K+YgRp6Zx4ryWtD94txXzwZMlNOI
         O7QMrrCuUM2goysOOY7c9SroKBCo/joAc8b3XQiUduk9Ft5TaTbKX8xpv2bhp2VPb/CY
         RJOll44bZpLhjZI37suuwbyTJdTgIJLaqot6oQo8po/rrT5Q9A6rs+yoMp6XmqDc6PjY
         VnqGQ3wFbkvkp8Rl4BsZZhndYsQywjW4WzcfRYkJGG61aGt0DaE6MghIG+Rlg4tS7fVq
         gwQg/7p+e8eLsJIvOOV3yNYqd/IrOrKp+QpLRtS5a/SZ2GyLiXCidhVmkRj36HedLql9
         nRDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770017763; x=1770622563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=e+jQxJO0dnSdAt0rky0l07ozz99OWCx4Kw8JeM9fu7s=;
        b=szdFe3yFPBgX1uNg60HanZQxKB7hSQ5Cn1hZzLHmP9E1LGsKC8hXxyqTCUb8UzEOQD
         ruLYT5sh8HSfltdGplaVn+qMt4kgGUNfI/EDARoMj7IWugUoVu9s4SUvJiZfCFR0GCS2
         os0VOOaUecC+FScze51MtyCgDRYnClObDXdPsR2yphimO+7rQrD74vopkI1eLtxq7958
         5yRJve+sKTHS/y0g+DUmT3PodBTjfK7IwuUaHSuD6LlQ2YpiY5nXtA82Ylkb9/B09njO
         g2UGL1wcJg3pCX/kDO2bCvYcEq/7m09XcN+Cj//UqOirJbXPDNOXp5gIFnXHDw8/kkxv
         gR5A==
X-Forwarded-Encrypted: i=1; AJvYcCX17qzTmm+oTGJ0uE8X7ZgTu6FN7OSSJg4b2Gl9XMFvkhx7l5xO/3/yecwzxZ+BbfqUE7U8KFjhqH3X@vger.kernel.org
X-Gm-Message-State: AOJu0YyAXgioVxWzA9/S1/CxUKOsjWpteqbc6F+PD7WjUS9Br+vk+XGP
	f/p8+RVWA83iTI73hktPZqCYNYYOQG0wrJ5LWQ+hjCCwvxSg+vap5b+A40RiE1+UewhweKdpOLu
	jffEzMhG9++i/Ud4lMouE0Evljn5i3r8i68OLuTqyn4BiJN2apIO9Jw04YSUGT28r
X-Gm-Gg: AZuq6aJOMRznSfGabTY0wku+aP1fngEQCxIcYOSTXUBd0NnCyfz8kjmXrwUrKTlQAzz
	YkWq7f5j5zq0B+lwFmEhW5AeOYF8BOOGXLcwnJkGse9Rx5fXcITu7BpL+cLDS+wDxr+xW2sUTB/
	xYuu+r2kXYLPORW0gLTjDv7hhCU5dsy67mT9BEnsgdPd/q4cxX9XxADC4ZOKFDtLnqfrSZ/iSZr
	eQbJZOEQDLB65OOndffbMU3qJ2M7/c13/DyItLCj7GB1QTS6wXvb6w5ySDbJ3VaBYmo/NKWlTHA
	XatrjjyT+KOfO8RJKnR0vIkDk/jakxVcCZHTt9BBrhA0tnBv2AsVWNiw+Qe6ei1pYYJHAWu9ICc
	JcUKVP8XKTXTYSMmODWBlNEnmxzn9kiHPPN9U3MYqgOFIkweuXMPW8nUJ0R0oEeH0p9HZJin/hb
	Y=
X-Received: by 2002:a05:6300:2287:b0:38d:f16d:2002 with SMTP id adf61e73a8af0-392e00659efmr10464398637.32.1770017762857;
        Sun, 01 Feb 2026 23:36:02 -0800 (PST)
X-Received: by 2002:a05:6300:2287:b0:38d:f16d:2002 with SMTP id adf61e73a8af0-392e00659efmr10464375637.32.1770017762420;
        Sun, 01 Feb 2026 23:36:02 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f3cc71bsm14129847a91.11.2026.02.01.23.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 23:36:02 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v5 2/4] firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
Date: Mon,  2 Feb 2026 15:35:46 +0800
Message-Id: <20260202073555.1345260-2-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
References: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA2NCBTYWx0ZWRfXyXUspWWGqa/f
 yTn0hTc6qcASOKLpPmFq63DlHABGou7WxoGWFIL+kVLMGOIN9oodeshOX47SwL5c/UTz7zyw/BD
 1SL3/5aJ0KWF8grAOKcL6e4TaVj0F3wmbTu5iRVvGpP+eE2LD0RbwN3h0Z0LSWy0W1jUK/6g90J
 fLj42H8hBoWYvegCF8fIsS+tgIUAaHB3Y0EtmcxjqrDE8g+8eC2CVSpoyQt6LF/nRbsKykWnUzI
 D4XHRSd7vWcB0v9AlZNocT9UOANbHzmfrHGvilqLsjbkmuLay0SJ6q4Z9Eu0NDUVnrl9nmq3+sU
 5dGO0nIgHFx3dGiYwPKae2cXfIcyVZiQO6No/AWsNYMOm4lm77KmLosXI6pu6IPCdbLx/+pHs25
 OW46HBgmNApDzITYvXvyij2B4xNRqzLKnm40s+NRV0+pAv8qQQQ5E6j+MmgNeM+8eYFRrno0VWE
 q+qlWGa9mfG67gWVFdQ==
X-Proofpoint-ORIG-GUID: bkF9HIuBmRSZTAcmHwV1wPAT8MySDGGQ
X-Proofpoint-GUID: bkF9HIuBmRSZTAcmHwV1wPAT8MySDGGQ
X-Authority-Analysis: v=2.4 cv=MYthep/f c=1 sm=1 tr=0 ts=698053e3 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=A5G4tF9_Y6NSfw4zGTkA:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261676-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yijie.yang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E20D0C9341
X-Rspamd-Action: no action

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

Add the Purwa-IoT-EVK board to the list to enable access to EFI variables.

Guarantee that subsystems relying on SCM services can access secure-world
features. This change improves reliability and prevents missing
functionality or boot-time issues by making service availability explicit.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 8fbc96693a55..58d9911624b6 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2310,6 +2310,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ .compatible = "microsoft,romulus13", },
 	{ .compatible = "microsoft,romulus15", },
 	{ .compatible = "qcom,hamoa-iot-evk" },
+	{ .compatible = "qcom,purwa-iot-evk" },
 	{ .compatible = "qcom,sc8180x-primus" },
 	{ .compatible = "qcom,x1e001de-devkit" },
 	{ .compatible = "qcom,x1e80100-crd" },
-- 
2.34.1


