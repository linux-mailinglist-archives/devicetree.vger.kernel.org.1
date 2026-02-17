Return-Path: <devicetree+bounces-266137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wP8xHd5nlGlFDgIAu9opvQ
	(envelope-from <devicetree+bounces-266137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:06:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0E214C5DD
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:06:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C1D5530B457A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D2BF359F80;
	Tue, 17 Feb 2026 13:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D+NCCHbd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BDHyLTWb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C209535B123
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333263; cv=none; b=I9SDUl1B4NiSb5iP3HAe74TbNBejZ7kypiLh9dJ5W54/XjM0bPrLxIhN4xMizZB2UtIAcaAq5mXiF48P55/bLqwrLbVm1ADiCvqMZDwLuRUDByFYAFEwFevhYONXwf1XLUuEsGZ8zuVAgE3PHn2fPigDYJyjyUaGMNoAEJd3R+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333263; c=relaxed/simple;
	bh=Umc4lJBE6iLRSvAa0gHSqwFC3beNVviVpyNP0jlUhXk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=innIQucZGP8gnnWQPJtTl6YZy1HvJbacElKDCtk0APlnx6kYuJK4DnJ4+6hgwG8UZPE8R17Zp4E4miu8ga5Tn79vsz9JZ1wjH1wxBPM9SNW+qoWK72Dw/uiglej0h34cCW+W2pGAp9Mk8kxOd3ajiP4B6Q8xohuX6HiSHT+O1gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D+NCCHbd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BDHyLTWb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HAkMmL597031
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:01:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=G4Pl2a+TrddTUBSj4hdHEK72CiVUyehsyV0
	LvzYlDXA=; b=D+NCCHbdYcYVbcA6qS3As/FiXN2dnBOtRhr/zelj0KGWYOu2orZ
	YigCQAWOkKKRw0AzBtM4A81Pg82a17T8bXw3SBel08B9bFK6R8NV6KgqEr/KqOTL
	f5qi6YvQRkcO5dhGEpSXgE/Frr3Szi7g9dac4KLaoNkB+209A9mUo1VAyt/vnEfe
	o4QvcO6u9xQv8bys4A8L3IFYG9zwrwwpylDyWmwB6XKLZPdYO6EtJBRrp5pQZIWQ
	IXeY57P2FSMAXl0C11Ac/0Ef4ECjc9VfPbkq3N1jOcVGhb0WBh7tqEHlWsl8PZcE
	jKLo9BuAFwmFteBXySOYPPltI+LwDi35J6g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cca361vyd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:01:01 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c71156fe09so2360612085a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771333260; x=1771938060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G4Pl2a+TrddTUBSj4hdHEK72CiVUyehsyV0LvzYlDXA=;
        b=BDHyLTWbB/bDORknX/Hd3vxSdXrcRwVS9xsbIMNLg2uSmFwQ+vznylg7Y5jv5KVuGK
         0uA5KYtB8txK2uvi8WNQhVcNitnNPjhxO5DFWkJL2GqGLeLIKv7q0tJTkGDGPJURUwOG
         kNjwpjTRwmwUYx81Nb74Hc6sgajiB1CrLhWGFtUPy0Kxkio61ekBK+0b+u40jMHd/6Vp
         ssAh6JNBNHpcecotVABdnmeHsv7rFuAXcPHVXWrCJBwLo0NKq9ez5JAp8+/JkCiPVnrc
         pfQOLdgrvvOGRiXEzLKoYiJSlasNVbJOS9F7hqwrum4KHS/n3wT8FTgc0NSdKcmo4xII
         KSMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771333260; x=1771938060;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G4Pl2a+TrddTUBSj4hdHEK72CiVUyehsyV0LvzYlDXA=;
        b=Rv8zVWb5UyXnyRiULEU6xvKnyhpY/M4QC1sDgFdQZ0juLNjj/FCLc9qtWeql6pmq+w
         ics4yhwA/EI29HCV1B+JZWyu2KOlgbe00BCNCJZtum8DfN6mOEt7b2eDWYORvvEhU+Wk
         jJ2Mgj6hEhbMtUG6wNtSKDFz2EcbvkTjZHODzBVP2Bv9LBODvQ2P1b7vxAehsfX27ZbQ
         olCS4q3nBwcK6cw6r8cXe0iWLYzQE3SG9n7ZDge1Brn94zb5BVFh7VlSwbqVdT9khHrF
         Yeo5Fg379mroQkURTL+ZOcBDdbjChaTV1SUL6UTTfdzZ78SIHmkRHEumyo1d8WKoW2Xz
         0+TA==
X-Forwarded-Encrypted: i=1; AJvYcCWjY/upPIjHSo2z1WiQxjHDZQYXIQZ9oiM3PJ7V4TyrFnmTRJBwh3HkWJYDk08Om8b2+OSpMUbptFB3@vger.kernel.org
X-Gm-Message-State: AOJu0YzkQb22GLTa3VeKl/ranVQpAEQkRo2Mpf+OKQa3nwYzJ2zZd+EO
	V6OMNFFrf7TM1cRUOd+0ynZdtzwmFGh5fo9AeLOq57+XoIU8l79hsnvOCM+IcyFL1t3HnVmmMhj
	cQhlvy8A+5v48MeHV47gWajn7T8is7ubvN5EnAQ1MJy5pKj8LAKZ+B/Ww0UAIMWfw
X-Gm-Gg: AZuq6aJzfiD14tTjDSlVukA79w+iEKdbw/YUcpoDA7Tbox6vQ4WrsNaWr5C5yu7wyww
	jLwu7HS1JLhGyEK6uMfIqCeuUzBBDx+h3Rh1YrMAgzx1cI7+qT/8SIgDjl3wtGjblsSj4Od6bHT
	BikqW9HAriZUITkZGjVzqiWiCZEdcK53MZd5nUn048rLktbJok3Rw0NqMnw7GDRJmr4MUzuQW7s
	/LJ4CX/Qc5Rp9JaXROhC5+bU+HCv0L/rMNAlXP2pscZUcJrLRhifvuNbm9UpxM9BcWhPK8SXwLb
	/avsTR/mLwaV5Pkf1NWLZdRMuFUhUyH1HP8X2tOXRJkOh46ZBRxlBDBjCVI0oXWGZ4vdbUYIXCI
	fyb7IfHTUjsg4lS9dJZaWzVAr68yuC+1Ml/H5tw==
X-Received: by 2002:a05:620a:4096:b0:8a3:cd9e:e404 with SMTP id af79cd13be357-8cb4c01e2b0mr1489889485a.68.1771333256555;
        Tue, 17 Feb 2026 05:00:56 -0800 (PST)
X-Received: by 2002:a05:620a:4096:b0:8a3:cd9e:e404 with SMTP id af79cd13be357-8cb4c01e2b0mr1489846985a.68.1771333254202;
        Tue, 17 Feb 2026 05:00:54 -0800 (PST)
Received: from quoll ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac7d91sm35009268f8f.26.2026.02.17.05.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 05:00:53 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 1/2] dt-bindings: clock: qcom,glymur-dispcc: De-acronymize SoC name
Date: Tue, 17 Feb 2026 14:00:48 +0100
Message-ID: <20260217130047.281813-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1345; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=Umc4lJBE6iLRSvAa0gHSqwFC3beNVviVpyNP0jlUhXk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBplGZ/AwrmrAYNmt0vxWk7ycUPw8XkRaqgeXuCH
 8ukAsLlPVuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZRmfwAKCRDBN2bmhouD
 13TdD/0c5nVKtwPnS/jATjU6ITNG1HVfMoXKkbQd5O/J+a3MzA3VLvxVCSx0OYr4CYEe9fxfW6r
 uI1NhsIMEWocOOQrZZOM4CxLRrA0M5X5wtLxxSXVvxa29qfbIgRYtLNCgSBGkb6bOK7jBgYHCsh
 3zBtv7wG/RPWX77U9tFdtmpK4zX2Ts4m7mD3w8wOuwFHASneasXnk8pWu5sm8vEoWd7PPfm47Be
 c0EjlsQhsTeXLKO5p9/3nMCk+1Mkr3Xl3rT8m+GiSzn9/msvp30QQbTIIO6AZZr0CfMMpwn/uFl
 f36/iBYNCJ6CzDS2cyBbnpHdkvgvdK6Tyan8ej6ihGXC3+ng/Bcrz+lpmuljjuPDfxUTuO6yUqN
 iaVhBWwVtqrRLoNtY1fAfh76GaOCukg6cVtKkZ/EAf/moGrzbVHkilfcnOd+uDBwDiS8cOoMvZ1
 LTM40kB8mEsNQc6qE8AoFqscXIZwve4m5ec9iPf1+ru1gvp9Gov5s2f4JuPLBBZiwvHsfMi9JCM
 t4sMiLyeXnrGQ/KjJ9/GD9jDTWAZv+Mh6PVCfG2Am7KsKuTqg9OM+SVW/MCEzFHJsEjApX/gC1Z
 ZzCkXMO7SSiRIhRwacbpMhsc2h2mXwTg8/68tXqvjEudpMPWjnM/FBbO/0zSa7BmwyuoieBSHG3 PzjjFup2eoSgKFA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwNiBTYWx0ZWRfXwD8f2xNDGMXt
 bn42+IUnMZMrCx+Bnmp5yMwZ3AZjyCIOUkdM2Q8CmyHiFu8RQKhLDdEZCkXxpcUpjsxu8ukdDO/
 Q1CW2knbdQOfuMyOcupoc3LtnQK2LUZzd3LWvEE8gf8ynyRBXSP/jHR9eEG+OFozev+xTEfNdCN
 sgrM/Z7EySqKJ0AAB15FzGYOqzdIZfCSh/KUCVGuxs59bDgN/oTjIHuYBtYRY0sgg+S9i/3Cf81
 HDj7ifbgte3K43KBvmN3Hm1LH6uPMQxVcjUtfSYo2fHIaKadq+JiFrLuZipJ0prelo8n+OGbYqi
 sait9Qju3AiDUCOcKTfri3mHXMvY6VYl9IZ8WEqNyQYUZ4eKxp2q7rFRQoqgVUqexVanbKSf8uX
 zGasBzLk61IHi4WSOJAhnzglvSvAyevL9D0XJtUkLrykw9iAtNvKKeL4COsT2Ha5CpY1iAr/N/q
 zoNn1t1uGij8rdkg00Q==
X-Authority-Analysis: v=2.4 cv=b+G/I9Gx c=1 sm=1 tr=0 ts=6994668d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=UdcbsA6SMs_yTIfmLdIA:9 a=PEH46H7Ffwr30OY-TuGO:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: 2TLQDk38_QXjZIpegon_Vrm9WpcowwGb
X-Proofpoint-ORIG-GUID: 2TLQDk38_QXjZIpegon_Vrm9WpcowwGb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602170106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-266137-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,devicetree.org:url];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1C0E214C5DD
X-Rspamd-Action: no action

Glymur is a codename of Qualcomm SoC, not an acronym.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Changes in v2:
Split from previous patchset, because I messed up commands and combined
wrong patches together.
---
 .../devicetree/bindings/clock/qcom,glymur-dispcc.yaml         | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,glymur-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,glymur-dispcc.yaml
index 45f027c70e03..9de4ba71f1d9 100644
--- a/Documentation/devicetree/bindings/clock/qcom,glymur-dispcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,glymur-dispcc.yaml
@@ -4,14 +4,14 @@
 $id: http://devicetree.org/schemas/clock/qcom,glymur-dispcc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm Display Clock & Reset Controller on GLYMUR
+title: Qualcomm Display Clock & Reset Controller on Glymur SoC
 
 maintainers:
   - Taniya Das <taniya.das@oss.qualcomm.com>
 
 description: |
   Qualcomm display clock control module which supports the clocks, resets and
-  power domains for the MDSS instances on GLYMUR SoC.
+  power domains for the MDSS instances on Glymur SoC.
 
   See also:
     include/dt-bindings/clock/qcom,dispcc-glymur.h
-- 
2.51.0


