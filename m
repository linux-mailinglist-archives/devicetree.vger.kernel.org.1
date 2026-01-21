Return-Path: <devicetree+bounces-257892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KItHFGe1cGndZAAAu9opvQ
	(envelope-from <devicetree+bounces-257892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:15:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E68A455D84
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:15:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F2ECF68218E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EDEA396B94;
	Wed, 21 Jan 2026 11:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="joYaf2n1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fim8HzB+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16D0368269
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768993730; cv=none; b=jVOws8qD3RVj+sK5f8Wil93Mm6ul44pHKvpWZMWMv7mhyoMzEI1py2U7uFSQTJUak15SjTSC003e5n8aQSKITW6qYVR7ma6woYKtw+Zbwhj4j2cMrePBKaEydLWVqOF8Z18kR5OZefejYkQoCSHFzsC9MwZ7H1al2VHjokczSIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768993730; c=relaxed/simple;
	bh=ttuuT4a/yce/hPwLos4F6FaJOgKfFvjfty/guaeo2rU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=lY4VsStuNqvicVOkO+2V59KhwRVFSC17qHtapBY8I9YWIkK5ol2Vt4dAdzeUg11DDMDPuSRcyr62xUwTudhRSj+CbFNb5o7w1YSGLdzVcoVzANUwtnqu4Z79hYdrhEbhKkhWmtwwV6cc9uw7v/Y8LsxEsHz3hNFBKh+TfdQtru4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=joYaf2n1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fim8HzB+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L8YZR42065756
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:08:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=rqxtMdegpYHYw32YRg3oTU8jud9UIt7Jz7U
	y2WsI7vo=; b=joYaf2n1I6RHD6BrSYOOGLveaD/gwN+poHv3cj6vjJXNp1CD4eU
	Fz5TPuiiOv9BGhdvrAzxObJmZRZhGta4G3nvwbcVBxGHuiBHDk3Y42iVvJMFTPKg
	jmtHwtfa92VlolG2BztubCoMYeB9JlyYbaa+86IVLv8IIlAUj+c63WWhXinwYdk3
	LJ/pXQLR4ABnHKzWRzcWiCV0fzQZCzjN9TVuHFnc3wEvg8vtcmhiB3oREm3Q0e96
	69E/quqtP7QiSCzOkwPSr+VHozMAcl3794tTKz6fGwpUkVCUIHdxcYQNNb4fBf+A
	69qH+temF6Q7AZpS6O/CPPlF+vJP54B7Q3Q==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btudp0qpe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:08:46 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b5edecdf94eso12255355a12.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 03:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768993726; x=1769598526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rqxtMdegpYHYw32YRg3oTU8jud9UIt7Jz7Uy2WsI7vo=;
        b=fim8HzB+PjOcVH7E5lxY6sF2+pnmI+qqq/ujOErIka0iwPVnzNhRecI2tu64PIEchg
         2lg1zJS7HhtRfUYtC5ZvKoj1WU9gBqShoRJZf3sNk5TtqG0qdvJAaNazCjf5gF3W/m2h
         fbcSquBCMDXd+E3tDbGz+4ojCaEcCOqu511fHXuAj/jmeG7tFblHD4LMxEl7DwFEtKiK
         Giqdw5H2qchTyAmYglEKOTNCJ0mNbZWHFcNPSiZFlDYc8nHkFtLoNY6oMgefIgXn/bOB
         IJvpMXHqo9LPvMppvfuZnztdFT0MIM4dOHRALD9CZbUOIlhc7Lh75RYY2L1zOlWv0ewo
         OLFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768993726; x=1769598526;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rqxtMdegpYHYw32YRg3oTU8jud9UIt7Jz7Uy2WsI7vo=;
        b=rxea24KoYWxVGSM6Fk5jPRU1vABPoJhW7gEQ8AWTMCMNeMGGaNavF/d0RvhrJzaqdM
         tk2pXeYTOKFN867C81HRl8WBwEjzdltRPlqXsYh+AmwzLiaGMVJoOpPX6n0h7pIpN5hB
         0VPWuLMMtvnjS0mIjzT7njePQ9GvYlW0EKbUb48YgngqNosr7PRANDyAm+119PhzT8TC
         kIHx8rsW8wChzBv7mwxxy99mzBsplKfxISz5FzO8p8nslwCFRO6kq5BZu3Y8vwA2F9wr
         9HsMMJCsXno+isWOm3H/Q1Mds+IDa7nEKe8SS96xlHK/yb42d125fzLOA2S3WTp2VXBP
         oVRg==
X-Forwarded-Encrypted: i=1; AJvYcCXykRFX1wrzPMNqutJECO793wv0ghJ9H2qTBMsiV6EhvM5Uc+qrUKe2wbKWm6Z/91BNRo6AV75kyKUW@vger.kernel.org
X-Gm-Message-State: AOJu0YxsLLZBYrFz29fvSQDwdflTXmlwX79kFeeRDYB9aIGgRUUyzX5V
	oLG98lSbxYFMtzOmQHfTjvvFsbqoASq0p8gE8apYl7Atec4ISWhuRGj+5B8nEA2lDrUfP7/FZTm
	IKYs/QLGJm9nvptIDTe/PvGSt8yCl5vDzqssSSAcm/GLRL+OZK4JIqXk7iwwcgZWl
X-Gm-Gg: AZuq6aKBJWk/CcYN/DlT7JwtZbLYkRrwfEz5+Dfz+u03vug+312ReQY8c8cCyaXYOoO
	QpHaV37DLTaAFXoM8X0hClKjbOtvtlkQpbKQraVAKbuck9tdqEZzWacr+40nvItrHotxzfhR3Sc
	ovwJLdrINovrnjuW2G+qP3osxTD9/IAFjiwS+1FgXHv74xY8TzB2VtY/asfI47sijNArQc16qcI
	8/xi3nAxD4mwkptzlrGOBfCfd0y69zpP0vf3ZvrsOuaqHfGkUyxPJ++YfbqW68H3n+0qQniVTnC
	1lsZgkXDLE6BUplxSj8TzR/I1qNk5Q6WScM5wCxijxYIvZj4jTsXwO/D9CcFPGuAOxQKcDef8Im
	gdWZdnM0uIiCnL6ilYoKxjpM5BevhYhIf7HyM+Oobn2bSMQeZYOdYuvGEEV9BnwKwVJtXuY9hYp
	962kHOEy4khuYgeQCyO+hO690/ICJCFg==
X-Received: by 2002:a05:6a00:4299:b0:81f:4a06:702 with SMTP id d2e1a72fcca58-81fa036a8fcmr14849574b3a.40.1768993725998;
        Wed, 21 Jan 2026 03:08:45 -0800 (PST)
X-Received: by 2002:a05:6a00:4299:b0:81f:4a06:702 with SMTP id d2e1a72fcca58-81fa036a8fcmr14849527b3a.40.1768993724828;
        Wed, 21 Jan 2026 03:08:44 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fddd12fcasm6511788b3a.0.2026.01.21.03.08.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 03:08:44 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: vkoul@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sibi.sankar@oss.qualcomm.com
Subject: [PATCH v2] dt-bindings: dma: qcom,gpi: Update max interrupt lines to 16
Date: Wed, 21 Jan 2026 16:38:28 +0530
Message-Id: <20260121110828.2267061-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768993708; l=1046; i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject; bh=ttuuT4a/yce/hPwLos4F6FaJOgKfFvjfty/guaeo2rU=; b=S5bWQ4+twbQlCFWR9QTl+iQPLNv3ciPUN+kcDCA2ER7x+ku1Q11XZ/4oJhKQalFs0fDAsaoD2 60RqhWVlwRqCVXjYFaGTSocz0TYkIB1XduluSbDUdtbqh8sXNj71WND
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519; pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: FYX3UkQyVd277s_Y2V5PhgtQHDOSwVze
X-Authority-Analysis: v=2.4 cv=DJyCIiNb c=1 sm=1 tr=0 ts=6970b3bf cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=9a_DUlnzXuJTuH-cha4A:9
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA5MyBTYWx0ZWRfX+x9POINPybRC
 gBPnvmWj85ev5cntWBgRpCI1k4bSi1kn0YdjY4qf1/xMsAGaLeXYwUC/iSQvXcXskVSQZ+2IcCx
 PqVRIlK2AEQ+/IcYFDwafWFMLb0rPx+HXuNKxOmkoSi3uGXdU8eYaC04Qmv64Vq6cf13h+WDWkb
 DZ1VFtr+Y3SFICSf0WZaA5LEURnKVPAFO5VWSMGs20GUGb2XC7woA++doA9Ughu8XnetcC3yqYq
 6TeFfq5zxgKqVp5qz3OtEq6p+ORobWyleC7ADU6yoddsTwr/ixWtgMX6nk5TYIDM73TsR5wh7+B
 x3SRU6GjoBk3Ofhs0Fa2F2U2F9vm37fGC50XxHOgmhZXI+yRwT1ZQNBvHyeI2sJ1v5FdnNGwoVk
 IqzANoZiQ/u0ffkFZpeGBzQsOxcGHkeiaaz2V59Gq59okgS1yCDtl4RZQfyfG3gWPZ8eLQh4y6M
 CGN2Pye9wO1trmc3QqQ==
X-Proofpoint-GUID: FYX3UkQyVd277s_Y2V5PhgtQHDOSwVze
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601210093
X-Spamd-Result: default: False [-0.46 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257892-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pankaj.patil@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E68A455D84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Update interrupt maxItems to 16 from 13 per GPI instance to support
Glymur

Fixes: b729eed5b74ee ("dt-bindings: dma: qcom,gpi: Document GPI DMA engine for Kaanapali and Glymur SoCs")
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
Changes in v2:
- Added Fixes tag
- Link to v1: https://lore.kernel.org/all/20251231133114.2752822-1-pankaj.patil@oss.qualcomm.com/

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
index 4cd867854a5f..fde1df035ad1 100644
--- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
@@ -60,7 +60,7 @@ properties:
     description:
       Interrupt lines for each GPI instance
     minItems: 1
-    maxItems: 13
+    maxItems: 16
 
   "#dma-cells":
     const: 3
-- 
2.34.1


