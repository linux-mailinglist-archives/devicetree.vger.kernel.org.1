Return-Path: <devicetree+bounces-246456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A47C3CBCFC7
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:40:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 469A73019BA6
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82EC232939C;
	Mon, 15 Dec 2025 08:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GLQP+rnH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cCAlkz4g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B477C313E19
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765788007; cv=none; b=G3pt3Rhl0drqU8ZL56M0N0B87kOmI2W5Z6UDn79cxuzk/FsJjqj0Y9Pb/DL8qePB2Sd3Yk7bSUgzWQtvXf2tvh2YToLpSLyGIZ6x6yDXAHLsPeJ8CJ70dIX23NrCXHywlLhuoOS+d4ZjVreTkvtGwiufOSX+uxM9UAfPXgmDl58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765788007; c=relaxed/simple;
	bh=vTeQ5AHKkwW/UkEd9H1rXrSNU2GbMHUYNZLpJPgp8X0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QIgiT8Bcv22uitFkFHmm47TgwfzUWnrYo3o5VHs9OxLXZh1ahZPyQPSereKnIWWXLRBCtmI7xgzSZ5YgvEOATESNk29b/54fCsuaat/E1ZY9hybtSok0dzTTxDn9g+OY/fEtSw1x4IRLs/7hgYoTq278nOCRn77ABrpQ7n9wlUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GLQP+rnH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cCAlkz4g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BENulHK2875219
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sav2JkTpiNB
	huDhe1bdSzqFnq6opp4D6AgKKwiZEkUs=; b=GLQP+rnHjxmM4Gu3RrUAsJrjuj1
	WpDKzVpDAvzh8NeF/pp58Wa3J3hkeqYZWI+ZUPRiBWGhppANJOF8oxGUCJeGodO/
	ii6SF+2m7/Qa4HfkDOjrv0jPGvzQQErzm7uzvEXSJ74TXf4uvBLDCq/P8R3Np0SE
	5x0GS5Md0rqELXQ2YFv7P5Lo8GANQaSJvjP6LB+blyGfg9QNnRlCOHikrbQ9UOTz
	Xc/209FbIwXf1EzLi5wuw+8coxbI1r++iZI5l5z7cl1WYw/nQWKQtyY3yvXqxHC5
	cOIlAR2isRBB5f0gk0nTYR4h4v73IGSA6UP3rN51xNGEplYv/iERt1mF05w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11bcutjr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee25cd2da3so62060201cf.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 00:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765788004; x=1766392804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sav2JkTpiNBhuDhe1bdSzqFnq6opp4D6AgKKwiZEkUs=;
        b=cCAlkz4gwFCmoZpGOTcRcjhvgz7jKX8JgcroD4KIVEYg/QMnM3fx4ZpODS+0o/5f53
         HM60tVx2RC1WmAL4dnB/wulOXl5WAUQWx24QGMiBzyw1ke8JJ+DKrrl6byXct/s0X7on
         bTVWbhJu4VfG9sNvPDUcHHIUicirUz/qYzxiSSN+n3xl34k8+aLowbtr9NBG7JK/njun
         xDZNfmCKeMZV7z+hvbNQfYxJ87RU2VuTHVy2Kf/XPQqeC3OPf1rYNOwfiM2UeusmsH9O
         3j6KFzXf2yU8oHUo+tgo6vOipxFHxOErZd1VNX2Nqu5x7zujok8GPWLIderIzHXMJdHS
         57HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765788004; x=1766392804;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sav2JkTpiNBhuDhe1bdSzqFnq6opp4D6AgKKwiZEkUs=;
        b=UOfBA3lvT3Z5B/MJCreVUZZVetPTQ9hSdzYfCOg4fR11Ds3ejr/0eFhcn8z+WMqgQU
         SKnAU/F3udHbnaGoRoqRk9fEDIw/HaWmk3IevrIAdUy/qBz85m+u9BAd6v7vS/lXzF02
         wOY38NABv6o2X61xfpR0LTr1HOEYU7u45P6NTeGq4dw87GMzHNhxrf6Pvun7QzSNoKFX
         NZGiOHpeD0MJagnHyuzWMrIWuWN0Z9ZFvetwG58072Y7VBhkrotSMeGVs6h7COWMC3jP
         jumqnbo6i52jO2PG48WTNxPVLPLuUt02ET5fe5Bn9l2XWWDyO74i/DMo7/mbabAwFQvq
         9f/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWqwt4iR1iaj578Z07pTGG8ljyz8bjuexsYYZ4Rn2n1CPKs7eWFrnZ4fiZYVy6ox7dd/+ajsH9d3R7T@vger.kernel.org
X-Gm-Message-State: AOJu0YzAiVUzr7mNzGOy08hBKkJjkSi91gNtWd/s9qCQz1nCpTp0Njmd
	QcNN1epeD8/wG2lVkgZIffwQESzWi2eaWm69OVcsDu4GCnQJGPV2MVC8YOFFQVNyF7JI0jHXWwm
	4q++IqiU2Ncy8l6N5zyM3HjNcGftvv2wMMmEWI9KqhdBYL5YNDgmq08Cc++NY9pPM
X-Gm-Gg: AY/fxX7AJiWWPYoVQGbGd8XcMWkFovMMtn2f4y1IGlrhUQjSyBYuE8by+iU1xoYkSj2
	Mxi/s/8p/529arIdFKr90e8RIn3gB+Vb2mJ5rCL9JX6A73Lib/5KD9i5mfqjm+eX2wnI9O6XUxL
	sTwNRJfnQUCt4cUKFX9+JHrGrk6B0DeMC9kabmd2stGYP6UWzY+uIWzE88VsaL1/8IUCnSNy3Ch
	bkmdRqtLn+HQgXSl07DcXbtsqBWt7oCsB5vE6qp4dTZTAbVqhde9b731JOD/IcISvm3B0F9sdhl
	IHja5kmeFdYptU/kKLLTrUf8g7Cb2NM5+/IYF+AsfBZbBkQgIkCmE/tlJs5nJIC0wri63wmhn4a
	nDw6JhF+XVcvcAH0bmKTQCa0Yxanb5Ih0+oOWOSmXuy5FUmnyq74xV6lsQncfZ7ohIYo=
X-Received: by 2002:a05:622a:59c4:b0:4ed:1bba:f935 with SMTP id d75a77b69052e-4f1d05e1009mr142361751cf.57.1765788004059;
        Mon, 15 Dec 2025 00:40:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjYobfDnCO0D7Ol1hDSoFkMn3Lh3k7Wfl96wThmTVmw+iAn7yB3AV0vwzn0Pg3esUZljPQiw==
X-Received: by 2002:a05:622a:59c4:b0:4ed:1bba:f935 with SMTP id d75a77b69052e-4f1d05e1009mr142361631cf.57.1765788003667;
        Mon, 15 Dec 2025 00:40:03 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f1bd6b50afsm90557971cf.21.2025.12.15.00.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 00:40:03 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jesszhan0024@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        yongxing.mou@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com
Subject: [PATCH v3 02/11] dt-bindings: display/msm: dsi-phy-7nm: Add Kaanapali DSI PHY
Date: Mon, 15 Dec 2025 16:38:45 +0800
Message-Id: <20251215083854.577-3-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
References: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: fRBpQ4Al3BzvuHaBwIvUAnWvS7Yd3JdG
X-Authority-Analysis: v=2.4 cv=ebMwvrEH c=1 sm=1 tr=0 ts=693fc964 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=tNVMJPnUsVqa3Ada0T4A:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA3MSBTYWx0ZWRfX7+cMPy0mdK/d
 oG4Er70EHvjD9oP4950ew6AJ8gg8F6hm8zEm3w7CWnwNSEKkBeTgjPoU8KKatpSZfm2MccQg6NU
 +EBwMRA10KtUkVzb61M8NWYVx/pAyVLWxGRVibuSNZXKbRXpciAYdtXtWcJBAJDHUNKRzRP1vVP
 827uXPlR8IZ/i7jP4V7Za7pqi7j+jL8pvc0YJeM3ZfQ9utk33NbbtHpn4X98MnDrF6pkUfM6ZlI
 /77ZG7Z+mX0XBYwvZp9EG9wkRRJAa/I2NeJTM7ousjcioAfcGBuj/Ekr+kpmUxHVMD5KkbCiadL
 U41rE2+SjZiQpfHAzQeAvKvsAULx2NSqwA5sZDnD5vM96KWqZthTxUUootTJ5VeFHpr6T6z3Pdb
 ptZIMF8QrjECVtvekBW5F0jFxt/qTQ==
X-Proofpoint-ORIG-GUID: fRBpQ4Al3BzvuHaBwIvUAnWvS7Yd3JdG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_01,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512150071

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

The DSI PHY registers on the Kaanapali platform differ from those
on SM8750. So add DSI PHY for Kaanapali to compatible these changes.

Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index 1ca820a500b7..a6e044eed3df 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -17,6 +17,7 @@ properties:
     enum:
       - qcom,dsi-phy-7nm
       - qcom,dsi-phy-7nm-8150
+      - qcom,kaanapali-dsi-phy-3nm
       - qcom,sa8775p-dsi-phy-5nm
       - qcom,sar2130p-dsi-phy-5nm
       - qcom,sc7280-dsi-phy-7nm
-- 
2.34.1


