Return-Path: <devicetree+bounces-264146-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCcxGt1Iimm+JAAAu9opvQ
	(envelope-from <devicetree+bounces-264146-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 21:51:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E11BB1149AD
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 21:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F2A0E30333FD
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 20:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D89C429834;
	Mon,  9 Feb 2026 20:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A7ry58RM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XVgjzRAM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACFE336BCDA
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 20:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770670168; cv=none; b=D5Pg7ZPfzjurN3NADms74fAgUlyUN5AExELrGBdWYC9jq043iuDdZU8QdCRW/VJGhBA5RmZ9blraitDZgrRZZzrkY9FZdyfoqqiOu1mkYQWAMlNwbUvDuOCOOEDExGPXjulb2d6gb7abDYFXrI4Wo0wqSblQCshNMGIJAZ2xAIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770670168; c=relaxed/simple;
	bh=wbDLIC/kNGZ3h8BMBe70rlk5uwo566aWa8ZTAO9AkA8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lgYFpmAIpaPu6/CXZwB/IsodDoyFHL1TXZpM3/PES3vbTAh1DvwEJYopDmpQbVZ0sGxV/VW8J9kwN1hPb+thLtM5JkY9Hi0HQM7MSop86MnWT0O6HpdNdNrveKnxZX7e/Egs+g4GpU/PckyciU4Qsl+yxyekf/i3QB40C3Fh5zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A7ry58RM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XVgjzRAM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619HOcNv2381059
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 20:49:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Jip/3G8CKVy
	YJeY/9bxM7H7qr58iBaNdMarG43/Z/YM=; b=A7ry58RMQ979W5nW9paYLGGE/PH
	HcFW1aELJbubeasIWGRnD+6efBxV8iA3UcTbLtr46RT/0n6g17lwOYH5pQZz0yS8
	L5nVjNmK6ScnLjUhFVtzGBQ1ctlmDMD+BGmNsnrvhnec/dlWRPmglurWUFY3AoqA
	65XTg/yacTGTaKKjuKVw8MWZNbCjd3YHMu03l54f4HmR0btUetmKMlBNFyN/khXK
	w52ZMe72NyiRyeIsJsWCCGbVXDU5C9uXahtl880o3/4Qy5+botNV504t2BL5VaLi
	Dt6DQdFEA4d+mayaQ1TE93YvBUe2Ghs5DEHxE4JWPRHO5ULks9CeSHmAHJw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c78gdu5xe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 20:49:25 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2b7a28264c1so3175165eec.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 12:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770670164; x=1771274964; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jip/3G8CKVyYJeY/9bxM7H7qr58iBaNdMarG43/Z/YM=;
        b=XVgjzRAM+Ey/6mK7DGCzG3qXbSyY1xR+XtlYR1V6o0OipXKUrjsdgSkoTS6MuCq3q3
         MVhPXHwIEr2p1UODdPdRa0wZfGB/BOViflxtuK2JK4zmR2f3IDHJap2MlAtA6NedeNXY
         n6wW0+3tNCFgC6ob/WpliapTtRNBTRw0+Oo6kwnArDIGE/XQiDrnvnYOmKosqxvsr+VP
         qwTukebRUlfatFjHekJIhbEHJfYPiUjJDY8/Iw/6lzxi1LNi1zddtW0LNVMZUqJjrLGF
         Gs8VXnqO7dwHjSNUcqrh23X6Fv8xEegOVS/JQCnGkqISO+QiPZAlvMMPDuSvkwnojw5p
         X9Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770670164; x=1771274964;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jip/3G8CKVyYJeY/9bxM7H7qr58iBaNdMarG43/Z/YM=;
        b=Fd3hT4UnJu0Tr75uMnL7NsRFyYdbm4VORRQAO42fa/pmk2daVUIuV4JL1a+dMt2W4K
         +WODCPCoMzdZp2a2CuL6dq7qOxUsKasjTs+3zYwXLtIbkGHkQfkTZaGn8krLA/uhcpJR
         K9eNXtuA8sdoDfc/X/+IEX3pyjEM+F2O2zYUCuneMew5PUEeS2eSsQS/ivrcNP2iHqdU
         QOKc7m1pH6Tt+0SKmw01IF+4N7I/edl7f0Ql8qkIJtPbYZ7qs922TuXGKw/RtBNurA3f
         FxhY7OxStLflFfCbBPyRZod+gTr4tr1vO39WNqh985RrKAqubhlvuHUByHLizUBZ7Ecf
         eBVw==
X-Forwarded-Encrypted: i=1; AJvYcCWIlVbuRK3lylfN5noDacO7VO5xzYYHvyGmfa3mTZr7qeyKMOANUoWQYaKfuBY6kjcgt0ehOobBMg5s@vger.kernel.org
X-Gm-Message-State: AOJu0YzYF1kM7p2KCmWXnRDWfqa5nYISa6ZIAgnKOhlxNNgQqZVkqwf0
	hQ0RjBZphvQWsUIQJQTORBOpR3/bsp2HwC267Ivw1vpX7wE4shFhQuG//jmxaL9B5Y15GiYn61f
	JZTyX2+Wija+aE/0R+AjuAbREVrPagwDp+ifJ2OOFYu+O9Hs/1JqFJ4/NFqdD1R8V
X-Gm-Gg: AZuq6aLl0uyPQlUzgFIDBjtKvlzUNdP+s/ZviJkWWSn1DHgiTmarh5tRoh1iFB9E3Ha
	7V2/H5qsqdcFUTBCYFXX7ecASlOYxMSrsHNBAP2YyVr1ztxTql0xwB543Efukp0EoOg9Yg8tRhV
	0ZdRP0+bg3kS3XvTPMgvGYJaCBwy5g/68KTgVwnSIQ3flAWXs9ab1i/Cn9/7hOiOY3Z5Hf18Tc0
	oxLqNmb7JxDlxILPjuoLSajcht09BW6iExr9hnq1EUtB4ZThD2o6L2AyySOoc3sD5/QX9nuEBMW
	6iF8bgU+poOj7rcMjiA9i1cn84lQAFdCYscmMMWptaDmbYNqDvIwfqGBE9KwQhJfh/AWZ1ynyJ7
	tNeWNITfVhLrMT7zpQ3nvehMRsFRquX5vIgZJGrKGuFL39wkSK7t2tsSd3TZ+7aHTr4Wzkuz8
X-Received: by 2002:a05:7301:418a:b0:2ba:6b3a:7696 with SMTP id 5a478bee46e88-2ba6b3a7b06mr1980393eec.8.1770670164409;
        Mon, 09 Feb 2026 12:49:24 -0800 (PST)
X-Received: by 2002:a05:7301:418a:b0:2ba:6b3a:7696 with SMTP id 5a478bee46e88-2ba6b3a7b06mr1980376eec.8.1770670163883;
        Mon, 09 Feb 2026 12:49:23 -0800 (PST)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba89ae14c9sm106247eec.29.2026.02.09.12.49.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 12:49:22 -0800 (PST)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: [PATCH v5 5/5] power: supply: qcom_battmgr: Add support for Glymur and Kaanapali
Date: Mon,  9 Feb 2026 12:49:15 -0800
Message-Id: <20260209204915.1983997-6-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260209204915.1983997-1-anjelique.melendez@oss.qualcomm.com>
References: <20260209204915.1983997-1-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDE3NSBTYWx0ZWRfX+howzGg4TXpX
 wShPdjWz3n4oiirqmWkqXTQe3JMh6MTZ3UHooAwIy4JCX3VwzH3xz2m9fL1DnUpmo3ScJs2vGB7
 DOzt/XXzK7Pw7SwOev3J+qmbb/ZLnvDiGjZ1SLJSqbQxdkohVIlM0gasm++r2ArUBpjRANV9tWH
 9LBf+VUDc9SbUa92FsHVyD66X6o0B2nhtZ6ur8RLtFUiphg1hAvin9Pw/4ARtg+gvy1V4YZYHbe
 0ovj53qK61jKwrZMNrHPshoZ3VHxeOTmeWJpa7u2fHZxOWe7RbhhMfPbEzDK+r2raBbETtohgL6
 oyUk14Y08CDf+mtYvfl2ypEM7Cg8KDBqS8WvX+n8vJGYspWfaQaARa8soodDjcZm1Yn7f6BUr1X
 /6TVRkr7XVR1fZR2QBH7uQrHEdf6KUMsDYLbZBzjFjfpLhNSgbO8EFcW2owAJL/YCLHJ1caN4ID
 Lj/T1Y+SzBCTXsfxe6Q==
X-Authority-Analysis: v=2.4 cv=Fv0IPmrq c=1 sm=1 tr=0 ts=698a4855 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=E9l9NioYpaNDlZYFeTUA:9 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: -3rQCzhVRgqwVOPuWCgWSB6A0m-PjyR7
X-Proofpoint-GUID: -3rQCzhVRgqwVOPuWCgWSB6A0m-PjyR7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[anjelique.melendez@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264146-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E11BB1149AD
X-Rspamd-Action: no action

Glymur is a compute platform which has the same power supply properties
as X1E80100 and Kaanapali is a mobile platform which has the same power
supply properties as SM8550. Add support for the Glymur and Kaanapali
compatible strings.

Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
---
 drivers/power/supply/qcom_battmgr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/power/supply/qcom_battmgr.c b/drivers/power/supply/qcom_battmgr.c
index c8028606bba0..576ff35b4b71 100644
--- a/drivers/power/supply/qcom_battmgr.c
+++ b/drivers/power/supply/qcom_battmgr.c
@@ -1610,6 +1610,8 @@ static void qcom_battmgr_pdr_notify(void *priv, int state)
 }
 
 static const struct of_device_id qcom_battmgr_of_variants[] = {
+	{ .compatible = "qcom,glymur-pmic-glink", .data = (void *)QCOM_BATTMGR_X1E80100 },
+	{ .compatible = "qcom,kaanapali-pmic-glink", .data = (void *)QCOM_BATTMGR_SM8550 },
 	{ .compatible = "qcom,sc8180x-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
 	{ .compatible = "qcom,sc8280xp-pmic-glink", .data = (void *)QCOM_BATTMGR_SC8280XP },
 	{ .compatible = "qcom,sm8550-pmic-glink", .data = (void *)QCOM_BATTMGR_SM8550 },
-- 
2.34.1


