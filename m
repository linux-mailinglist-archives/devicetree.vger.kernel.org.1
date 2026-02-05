Return-Path: <devicetree+bounces-262937-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cK8WBjJkhGkK2wMAu9opvQ
	(envelope-from <devicetree+bounces-262937-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:34:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBB8F0D8F
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:34:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04E503004F61
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FC4939901B;
	Thu,  5 Feb 2026 09:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jx8R7AvC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YSH0nGWF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088A83921C8
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 09:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770284043; cv=none; b=ieeuQzcK7vY0/nl7EC9gaOpKbuamKI/R302fzOysQ4o1H7yGyUcgXek6yhBKFc2Hy3T/nblYA0PeeuFOM+a7lFmtBWipreCxQw9bVncVL7UiFqAY9s+0NeaW/E1/WFShfVKL7MFd44iL66HAPw2atDM/ctOzTBJU2NEYaa2WcFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770284043; c=relaxed/simple;
	bh=kPs0DtXG+9QUrv1Us0pa6hxYPDLn14oG/QFMp/cxXH0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SVp2rpwBt7J8rv/vZ0A52QYAlKs6+ek51omFWBz66nS9LQ/f8ezjPAT80TNDEDTYvOyHwCKDU8WZfRcjbiyylBUPlj0ixrma+WAbMCfPJ/wDPpX0QaPzZd3ogtJn4r5FpMIkN7nhtwR85OLhsA7ujJPVj12o+KEaRCXUhNiumfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jx8R7AvC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YSH0nGWF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6157Mbv2890162
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 09:34:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=lvQdTkGdnJIP/VHAznG5qfzYCx3k04ZHT1+
	Hz9zICkw=; b=Jx8R7AvCqo6p+3yMJ1wn+YrNaTSjHpV02CqXd6EcGHVAOp0T4WW
	s0pYoMubHwMzR/LobBnSpaNU4QF45LUw5UVv6pngG2p/V+qj1AgWvog1JLbYQWiE
	0doVzeFUzMHQdbC/oIW78o8HMhihs5Kvnfzp4Z+XHPSO8dGCmru2uWhivNSb5BnL
	1YZ+YaY9fo/KvA3y0/3u8t++2DJ3/P4eKYamqgHKgO71Kga/z7cZqa8ZpkGKYdU2
	Yf5JWj3XOKMFP5BRQPuuJWvWV260Z9NsZerV929KGP5yqNESTyr1i3TACY/JpCpm
	L7hjzocIEoBPWXzxxcha0HKpc1QxIkJwqnA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4prx8dus-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:34:02 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so475268a12.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 01:34:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770284041; x=1770888841; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lvQdTkGdnJIP/VHAznG5qfzYCx3k04ZHT1+Hz9zICkw=;
        b=YSH0nGWFbxVBrJXZ5UlPgtbRwPs7J2hgYsYZ2slaIU9t7USppIBWlDDi8tkQeKsv2g
         U1BvPm/9AgBOhSn3HzuPiCmRrVQwSGcpEOUSuhMXhSR8j9A0srw+Xe1mTZKotPz5nIVB
         zvYLfY+Ml5F5f30KUN6BDzal13c6nG+9C3gjhwgiXcWS1GVefReel3JiNLAFpOwfENKf
         2FoW1Jq4tRiCny4s0qzHs/wiQsDEFYyeai7O2tCNtGuPktEgl8YN2Gi8IY8qwjhKta9G
         Q4p/1gotBKPzOzMsvvK37Z1I1vYHTAJ+RHroe8kEOvDCTD1lBNsPsqCyFD4Lht8IKX96
         xIzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770284041; x=1770888841;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lvQdTkGdnJIP/VHAznG5qfzYCx3k04ZHT1+Hz9zICkw=;
        b=Z0iYE5/ujnJtGYD6xn8a4HbZ9+0jtycyhuO6yWEJZYjRZtLjl8OS2uH5VU2rqR+02c
         1hWeCGI/r3v/zy6EU8LZSdYD3uWwtXW1S0TMvGZulJOcEyq6D91DtUIVMd6wFu7yUqOK
         Zf+XEviKwGGL6u/Xytsk5gszyncQwqGkzjcU54z0BEajcZyB4bD7k3aA8HTF1LI4QHzi
         qvlCqdlm34deFLfJLKQzV8zT7a9LIuPTSRtV0fcQuQQsXbUe45Sm3QmI5j/JMGouaJmz
         Lg65BiD5t3f6ZuYNh6NExJ2gv+rLPX6KTA5+7qbtp+XlNlZSTFXMwu5Wc7+gGpjCIxqe
         rTKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDFWwp+fIYRQZ7TYZ0NPE4WZ+S1TT5bSmE7XvxgnEIVaoWfFnBEZuYsf+TkwVkub6Qd7S89zDU0yLj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxjx+hAKn0Qyx5amQsZgQQFv6BWoRldCWOP+KtqaYmYmFITeHfY
	7Ua5N7AhheDNhD6lXKsoSSBHC4ea0X0f8Cb6/fzaHyioIuJT9MvcDqDo9+nsYl4pJM7v0tr0oj7
	7kxSpUz5eO7Wwa0e362KjTWX7S1iRNcjRNv0uz5MWDujv9vl/7lALXaMYAcgTjBI6
X-Gm-Gg: AZuq6aKdDSdKryzvBdH6O5YR2dn6m5uEogyQaqT5EzVJMwwU3WGt20nqKDNKKW+K5Qi
	8Yfg6bSiCZkV10PKsYdejYZxdkM7CuZYA6aulb+D2jGWlwQ/74v0PbT/vMm3mbsl0bdqnhQDvPk
	jiSlcC38ttFZOeQG1pzWd18AT2YNMDFWns39W5wx7rGaho9dlmyfGzWn0UmsVSgJZ+kWhoSqYas
	WZKASj5r1sIKrfaXrjXhmpaJYctDa1P0w28N9gJKDZGS9rmQ33TJpgaeAoGcmSzcj787/QShYRP
	5eZN5tZqxb5rhzhpPjk9j0oTERLXBHO5Hbuu3kIJTjamrTMF7RU2nPF6elgYInnQa02UpUdP6f1
	/vk3BTt6MpcYCAC7+4/0YTc5noE0b1T3Co+l0iFZfc94f
X-Received: by 2002:a05:6a00:4b08:b0:822:abcd:db0f with SMTP id d2e1a72fcca58-8241c64fcf5mr6075324b3a.52.1770284041450;
        Thu, 05 Feb 2026 01:34:01 -0800 (PST)
X-Received: by 2002:a05:6a00:4b08:b0:822:abcd:db0f with SMTP id d2e1a72fcca58-8241c64fcf5mr6075305b3a.52.1770284040974;
        Thu, 05 Feb 2026 01:34:00 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d487886sm6181538b3a.59.2026.02.05.01.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 01:34:00 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
To: andersson@kernel.org, robh@kernel.org, mani@kernel.org, krzk@kernel.org,
        helgaas@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        lpieralisi@kernel.org, kw@linux.com, conor+dt@kernel.org,
        linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree-spec@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        lukas@wunner.de
Subject: [PATCH v4] schemas: pci: Document PCIe T_POWER_ON
Date: Thu,  5 Feb 2026 15:03:46 +0530
Message-Id: <20260205093346.667898-1-krishna.chundru@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: CxeQ57pJx6-H1r-fpZUx72ZeWM9mrY6Y
X-Proofpoint-ORIG-GUID: CxeQ57pJx6-H1r-fpZUx72ZeWM9mrY6Y
X-Authority-Analysis: v=2.4 cv=eLkeTXp1 c=1 sm=1 tr=0 ts=6984640a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ji1uk-MP7uB9YWhOYAAA:9
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2OCBTYWx0ZWRfX08W0P8oCxjME
 O/dHVT0wj88t0V7frfpWGPmDgH2HljKiV/BsSEwO5PzpK9bB5h1tvUVkEeKTWS+nzsbJRM1A04H
 MI02NFri95RXumdxQKJrIBVWTsONgoe4ZrfL4+Bh5Qve/MHRKXuW3IPPlD7PnM3GDqCW8Al0q9Q
 PB141s3wvdOLojdsdVIulO+4iGxmoDl/Mj/pS9cAW7xQGNHWnGjbe+9lSlndJ64S8bARrunyzmf
 mXWGr2r2EwIKyxswfm/TsL3lFs3AO551tai+KJ/tOG2+yoeverGzLXQosjA0qxeIv/y7KAcgROg
 PI+3orpxhx4NEGu6kja1Mg6dleLpIhvKLiRrKYVc5QFOzMhyvUarUChm2EJkqjioXltjyNdZ3QQ
 B8rTrHWRwE51PAwOoJ/kewAeYmAphOa9QZUuyznAqtGYxMmX7znV3ePNoUg1mULRMXGCfB5hrxm
 FQ8IZ6czk+AWby4nv4Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[krishna.chundru@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262937-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0DBB8F0D8F
X-Rspamd-Action: no action

From PCIe r7, sec 5.5.4 & Table 5-11 in sec 5.5.5 T_POWER_ON is the
minimum amount of time (in us) that each component must wait in L1.2.Exit
after sampling CLKREQ# asserted before actively driving the interface to
ensure no device is ever actively driving into an unpowered component and
these values are based on the components and AC coupling capacitors used
in the connection linking the two components.

This property should be used to indicate the T_POWER_ON and drivers using
this property are responsible for programming both the scale and the value
of T_POWER_ON to comply with the PCIe specification.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <mani@kernel.org>
---
Changes in V3.
- Couple of nits from Mani & Bjorn.
- Link to v3: https://lore.kernel.org/all/20251126103112.838549-1-krishna.chundru@oss.qualcomm.com/
Changes in v2:
- Move the property to pci-device.yaml so that it will be applicable to
  endpoint devices also (Mani).
- Use latest spec (Lukas)
- Link to v2: https://lore.kernel.org/all/20251110112947.2071036-1-krishna.chundru@oss.qualcomm.com/
Changes in v1:
- Updated the commiit text (Mani).
- Link to v1: https://lore.kernel.org/all/20251110112550.2070659-1-krishna.chundru@oss.qualcomm.com/#t

 dtschema/schemas/pci/pci-device.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/dtschema/schemas/pci/pci-device.yaml b/dtschema/schemas/pci/pci-device.yaml
index ca094a0..a847500 100644
--- a/dtschema/schemas/pci/pci-device.yaml
+++ b/dtschema/schemas/pci/pci-device.yaml
@@ -63,6 +63,15 @@ properties:
     description: GPIO controlled connection to WAKE# signal
     maxItems: 1
 
+  t-power-on-us:
+    description:
+      The minimum amount of time that each component must wait in
+      L1.2.Exit after sampling CLKREQ# asserted before actively driving
+      the interface to ensure no device is ever actively driving into an
+      unpowered component. This value is based on the components and AC
+      coupling capacitors used in the connection linking the two
+      components (PCIe r7.0, sec 5.5.4).
+
 required:
   - reg
 
-- 
2.34.1


