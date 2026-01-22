Return-Path: <devicetree+bounces-258267-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LxyI1fvcWlKZwAAu9opvQ
	(envelope-from <devicetree+bounces-258267-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:35:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3AD649BC
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:35:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 76AD74EABFF
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 09:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 437093A89B2;
	Thu, 22 Jan 2026 09:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kte+yHGa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AaS/q97+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397AC327C18
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 09:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769074155; cv=none; b=VUEPWi2o9CDt+2hlE53HA3U+vPMy09na3rXSGUrGD+6APf11UfM4UmpLYGOgJgm8UXe2ALwJ+b+iioi9NBkPw7xaIF+V9MawjOIjHiIv0I8U7uSkAvnJ3c4eoRmDvbuXU98ZNWdNIbKFQxcPEkl5MVD2fTSe8jRYPRNyIA+3Pvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769074155; c=relaxed/simple;
	bh=pKJ4S9Yb5F8U/tAd8XG56d8jkvFTawkzeviPDJYVaI8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=A+72ttfFQnqa5Wmpop9qAlvyL7pNaHVMhPJXWI5hsouPWTheGV2CZwmFeyhu2Eliqojo3ZVmUdUnF179sz6S6ryrxQu0016sMLoQs+6TWjvOjbZwllDyKEsDevTrgD8jFRwkVNcy/5Z5jp47jxsa+8q7oySLHUfAJoqwpaR0wOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kte+yHGa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AaS/q97+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M8WwwU4057906
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 09:29:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=LZubwcTjSmV
	mCnfQ0ThfmfdbWaI2XjiaGGGtgqlveZQ=; b=Kte+yHGaaB+CJe3yRFQvO64BKD6
	Sdijt051Ut5eoHimNoH4PzjfiHWEihjrKokFk5/h0kcpWfml3FmttTcdKQMHv4Zh
	yjrUoU0TplkZMStlt2VRp4TtShQQjYUOfAz5gEwzpJrxI3zhSp/jxqSBWBYBOg+J
	b98sEWRVVumNJXI15V2qhtMWycd4EOy+8KZIBqQjAO8joQiTpa2jyo4QFbBvVnQH
	YxXk2PzwWzmGD9D6TlsahCVd5+99+RiWJUPBwHQAZr40Y9h1k+uHK0wezn9wb/GP
	Sa10+GGUds49BcY5sKz6VUe7atTKqgLgEUXP5x/9nNuBUeeOnxEYzfqZYcA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu7nbsqgx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 09:29:11 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c3dfa080662so481394a12.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 01:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769074150; x=1769678950; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LZubwcTjSmVmCnfQ0ThfmfdbWaI2XjiaGGGtgqlveZQ=;
        b=AaS/q97+nHJoY2ua98q6AT7NNYxiyhaMY8PUNSHsOKNcxghw38ShOfnsH9qhbBN4Z3
         5qRCP/sXye+lr2z44Jx+B5Ac2sgNEV+ya9cp0yjpZBJymZR577Ar1Z1wJk3rCS1geogC
         jXPZ9HGdy31pQgx8LaivgudfAadFbaUXUAdJE5QL845cIbfJt0pac3pa5DU9oLMYAAdV
         m8SAYItDWs/QvbIqa0soW83lWJEJjrYuSsiPywmkfCUDkI0VUrw6F8DpeZA7slzREkdT
         LCuocnlcNhLnnnOi5D7veRT4TuGf+InkOD1fuCUms419x6xjK3mwPkRAl5c2XRBn6H+A
         dZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769074150; x=1769678950;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LZubwcTjSmVmCnfQ0ThfmfdbWaI2XjiaGGGtgqlveZQ=;
        b=ADcCy2ljcRX9Ft5Tdg8tKqwua501cmB6n1IkNhTz0tXvMG1wQtAdzUi+qyDz7KCl4F
         wS6ak/dmFAIKsUo5FcFN9JTRpod2kXuBwcbzz/kBLENELqWBp+QrLiQvcwZdLxyc+QYy
         tGj+8briix9dp+eY+ScESOmr3ZUFF1VeM+qmkpMS/+m0kLZQ2vDrrSzq7WTCU0f4Bt/o
         fH47DebNK1K5gPaPKlaGTcYIrwHuT7ioVifRSZssnKlnytTZ35xLEMlFAbHLh0ku/apd
         JqnB7mn/DxqWlWB/70tb2IVURj+nm4BnB5Br37Lt/DyYTjTBLFigR6yQA0Bm5G2LYGF4
         24kA==
X-Forwarded-Encrypted: i=1; AJvYcCWHy6Oo3SgrCH4oIRo5e3EqCI337eWFURaKwImH0jEdu/yMCeHwyFVl1zd1MzjQLm3OdbUUXjMRZZrf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2QMA3cjl2HMOjSeiHkSVrvpOjhPRfLs4e6dQ+VT71Ee6pDqfK
	svBDGMIspUX4Cl8CBQlU2xsJ29ZsaHm4fJgNyOCjrJgN2D+OQnYB1jRfo1S5P8R7PpJi27Scjqd
	NigmD+v4chpnA+12QCQDsnbLFjlmIgclg69zL+O0vVInidCRh+/fmmDG4Ibck1PAm
X-Gm-Gg: AZuq6aLGOaXNILJ1CluElIJqzcqnNQqBcvIgNLxahdn7k6ZkW1LFKfnEiDT7WEo3+W+
	RT7KH2mcSP7kqa/3EDuezRhxrwenKqLHss8wlMI6JM6wC++EE2iHqwsKKROzxqDVyhT5DQWcYpz
	P+IQl7/bPVgTumpspKhYX2Es2q105Q99B4oj5lSi9T1YVpcr4K+J0d49a7l8d9TC/hdilq2MoBq
	DfYmOMVogPOYdpy1mNSlV4D3/HhrOL4r/m+DluY4YhLuAIhtESAfSANJV7eIqaJ+1cpwE/kTzra
	iGVJAgM80aaH6suvPf1+8l4CObs+paEYOWZxhVAGQlSJziAkAHzTFVotCS1AwB9r7QkdRQzcDIP
	pD9rTxN4Vmib4qpYgIQqo/6aa3YRcOXvA3cH0eR9eyis=
X-Received: by 2002:a05:6a21:6089:b0:35e:835:7ec9 with SMTP id adf61e73a8af0-38e626a462dmr2196916637.17.1769074150116;
        Thu, 22 Jan 2026 01:29:10 -0800 (PST)
X-Received: by 2002:a05:6a21:6089:b0:35e:835:7ec9 with SMTP id adf61e73a8af0-38e626a462dmr2196885637.17.1769074149619;
        Thu, 22 Jan 2026 01:29:09 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf355ca7sm17395247a12.27.2026.01.22.01.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 01:29:09 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Stephen Boyd <swboyd@chromium.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v5 1/4] dt-bindings: usb: Add binding for Genesys Logic GL3590 hub
Date: Thu, 22 Jan 2026 14:58:49 +0530
Message-Id: <20260122092852.887624-2-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260122092852.887624-1-swati.agarwal@oss.qualcomm.com>
References: <20260122092852.887624-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 8Rw3AXMIqlet5DRqJDxDb7Mv51rgNa9K
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDA2NCBTYWx0ZWRfXwVrLxQcni2Ul
 yORmNeS/q2IL061K692WUBpzdyX5WfFYD4tDvDh/8nlxVbeg905GDRUIcfxVwHUgIqqMFcNYp1o
 fjcPXl/IXyMq8ApN4uE3mM7hjEHxXmikwwqpWNswErwBnlcL6NvR1Qja5sm/W4IN3327OcqHFWq
 ONPvhAcY5JG+soaHfnFQTE9fDrx56vcspYpBNdGxPBkN81nmqHNu+dlseByWKtPxsG0ZvQSNtzl
 fKOEFKsEzyMQ73gorIL3SAPHJy+aONCjLs8Faal+ScSLRUnXOgztMjgqG80xPt3uraKShl1XaB1
 yD3X/9Da76qiEFiW5sGxnKI5hNcX5WJrgNim1J3SXLvc1a7XSYdsdXc5NwpK428qngQ8yXrpKKq
 edISCwbLE9xv75aDwSl/Os9waK6AmC9ClTFkn3Ux977lTYlYG/1iDYuuTyBghR7nzWcPZykdON/
 y2Dsv3OOhXXh8+ev4gw==
X-Authority-Analysis: v=2.4 cv=dZGNHHXe c=1 sm=1 tr=0 ts=6971ede7 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1mrrX1IwxDsCUTwcy_oA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: 8Rw3AXMIqlet5DRqJDxDb7Mv51rgNa9K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258267-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0B3AD649BC
X-Rspamd-Action: no action

Add the binding for the USB3.2 Genesys Logic GL3590 hub.
GL3590 hub requires 1.2V and 3.3V supplies for operation.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 .../bindings/usb/genesys,gl850g.yaml          | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
index 9a94b2a74a1e..6ab13785e832 100644
--- a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
+++ b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
@@ -15,6 +15,7 @@ properties:
       - usb5e3,608
       - usb5e3,610
       - usb5e3,620
+      - usb5e3,625
       - usb5e3,626
 
   reg: true
@@ -26,6 +27,10 @@ properties:
     description:
       The regulator that provides 3.3V or 5.0V core power to the hub.
 
+  vdd12-supply:
+    description:
+      The regulator that provides 1.2V power to the hub.
+
   peer-hub: true
 
   ports:
@@ -56,6 +61,7 @@ allOf:
       properties:
         peer-hub: false
         vdd-supply: false
+        vdd12-supply: false
 
   - if:
       properties:
@@ -68,6 +74,19 @@ allOf:
       properties:
         peer-hub: true
         vdd-supply: true
+        vdd12-supply: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - usb5e3,625
+    then:
+      properties:
+        peer-hub: true
+        vdd-supply: true
+        vdd12-supply: true
 
 unevaluatedProperties: false
 
-- 
2.34.1


