Return-Path: <devicetree+bounces-266689-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOkpBpw3l2lfvwIAu9opvQ
	(envelope-from <devicetree+bounces-266689-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 17:17:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 206AA160929
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 17:17:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 65A9B3003BD7
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 16:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12376343203;
	Thu, 19 Feb 2026 16:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SPNgeHT2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MlXPWpEk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2BE244685
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 16:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771517846; cv=none; b=u3JY+P6THrdWX6xd/uNk5ScCpOll3rGIME2aw95Vc7KqCbO9WgPDAV0UIIuQ8spxsxORRFpl5WYhLdVnnZ7Tx7XqBkSpPHppO4r9h/cvi2X25x/EXojB0HXimNcoSsl7OZ6q9X2JbKthCdq7d/J0pcmGYtPkDp6/1DEsuvIS5c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771517846; c=relaxed/simple;
	bh=w1BZRiXo12G6i9XeilLkcRvoTub29f90OZK87AyD/z4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=DCYZbOm1mtfVwlioN244AO6SdJ0CWzTe91hyzjIhdk8+9Yv7wgUKYbIBDTO9/nSOTn2K2zRhn0DuwNNh8nYwIND8YVyubdpopzzQmKq6P6b+qtOWmDIJxhw9Yo4MpiY1NPZ1Y4Gmy5p04cLug0f4SBOgTqU70gBMMlONT7oREg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SPNgeHT2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MlXPWpEk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JAmSYS1623636
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 16:17:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=K/qjftrJ7egzNOf+V0sy2E
	e5M5WSCZBJaR1TkGh+UCM=; b=SPNgeHT2F5yhnRZngJbHs73hNrd1aaBKu+9OVT
	lZj7PwbiI5+0Sc0qvCixTYwypXQnCno8EQEnA/pyZQtopsgEXzmyLQHk+UcK+TdC
	ysfMQq35sGxV3/PaSBJhG7Fo8udoxKdyAeveYT0TbBaRzFbKhk8qPp3dXfx8D6Z5
	XkwoxMhzaWnTmGWrUyQXHM+kQeaK3Tnnn3d178J/Gyp6fegGpvFWm1e9TgiTFdqI
	qVRyt6xVV5l3uEVfI4mvQYm1B+As3KF4P4WcvcX4nk4P4FTpzu3+ob5IdqhpHSqu
	24tiGlBb5LSkkM2m335O2Am48K0tcsIVHtuzqpXtnC6Cy2JA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdc7ucbqu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 16:17:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3d11b913so699374685a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 08:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771517843; x=1772122643; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K/qjftrJ7egzNOf+V0sy2Ee5M5WSCZBJaR1TkGh+UCM=;
        b=MlXPWpEk1Z51sobFZCOTD6NCxFqXNG/AQ/5m33xTWYFatqsjAAN9e7oWCA6arLUoKi
         X9hphh5DImLBeP/Mf6vOr3wUt51nfnA+TdXzn/ZN3WJYGHdjeCzvTpqKd6gIVWDiZz0f
         7uiXTnUcwdvIAzIMsSRyFJk4lo+kAgZNUfmx87vlHcbURLl3AyUyIFIbaE+niRt4S+4U
         B33zPINKoxXHrsHHNOuR/TyhpvwJlCStVaMt1RkeM8rqMoS3Dr6XkuXpUKwjIHPLx7BZ
         dx3NWYciXXZL5Ps3PqzOJQQwqYACX4rN5DCbCSWMG9h5nXkl1ANy4imwtXG70znM3FRB
         DXNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771517843; x=1772122643;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K/qjftrJ7egzNOf+V0sy2Ee5M5WSCZBJaR1TkGh+UCM=;
        b=CqaRrXggTfovmfGVWaVae44kIXqhCFhwI6fvUSTkTJsOPy4cStbVxgRsCmcroRRPmI
         /g/RtS51JwD/4zJqmqm5REIuiTtQjoKMOUng0St4YVFSWCWx/BK8ep07VRpLNBC6ypix
         D9iLhzJTQljIXKLVB65DylTzZw9eYpwphJRclyvnQ7H9bByJavZl4hTTIeK39DFh9DxI
         +43wUNA17/OsCbs6bS0DmhGIf2AvOuD3f1Rozo6UJL9ZV4tvHw3urXsm3RLbqlPqptJu
         Xy7wfJCViYNJKRc3fLdlpjCP+SXlEg/d+gfv4bYACuqpRaLrgPxqhSPwlZdrx4vAFJwq
         Pcmw==
X-Forwarded-Encrypted: i=1; AJvYcCUEiPo1VK+CtkCA6qF6gDSSAiA1y5vAuciFr94ysGWvOVaFyc5qhZw4bM7/rriAiK4fzmylCZJZzIVN@vger.kernel.org
X-Gm-Message-State: AOJu0Ywuq7ibC8CTFV6PSXoOV690NnPV0YmfgcivHVDKY4zbbMgsGSdy
	QkDigDIW45DN9r4v+/45QfmuJvLQJ3ZQjHWnrG6ZQPM8AZnEdw9GlAj8lKHt4sFh1p+s9qlHGAB
	alESKs8Z+XHAaTdgidznLxWfcb9/2bYVgAUBPUJ+jeaJQdJT9AcSRuH7zWDQyrYAJ
X-Gm-Gg: AZuq6aIPUXZnSX+HvqlvZzGBkcs5KaerCIPKjMj9Vdow4VoXQXrHhf1cIsLCPFVM1Vu
	EE4w7l3kZjhXtBaP/7Po0KHrytZL01zozl2lIVt3HGlyGQLMBy4DUe9ehUK2IJ2AEP4Oz1BX5Mv
	Tq5cKNPzWzLZiLqPDH7uuY1VuzBnM7ruLPnN9xof7mfE874voQds2Z4jrjZP0bNBFEQ7JjhmAtz
	zdjDRZfUOmr7ZLKTqMICbJGGS065u8fQK55n+yVo2E2y8LRqir7hArQe8HmXeRVQ2X89af4bVs/
	v2eFNxp/z33ESQ716b+3udG6e1pVh381tt8O+2o7hkpiNkkmJysFO503rVp4HCQvrKUtAexHDo7
	/+nzYFwmLZ5sxZr2TLWBA3SP8wddZCg==
X-Received: by 2002:a05:620a:4143:b0:8c5:311a:2023 with SMTP id af79cd13be357-8cb7405771amr694506485a.22.1771517842941;
        Thu, 19 Feb 2026 08:17:22 -0800 (PST)
X-Received: by 2002:a05:620a:4143:b0:8c5:311a:2023 with SMTP id af79cd13be357-8cb7405771amr694501085a.22.1771517842389;
        Thu, 19 Feb 2026 08:17:22 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a31bfbd0sm11365355e9.6.2026.02.19.08.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 08:17:21 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 18:17:11 +0200
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the
 Eliza QMP UFS PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260219-eliza-bindings-phy-ufs-v1-1-1635e7b53049@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAIY3l2kC/yXMTQ5EQBBA4atIrVVCyxCuIhb9UyiRJl3IzIi7T
 w/Lb/HeCUKBSaBJTgh0sPDiI/I0ATtqPxCyiwaVqTJTeY0081ejYe/YD4Lr+MG9Fyxc/bKqqCp
 NBmK8Bur5fY/b7rHsZiK7/W9wXT/dXAKCegAAAA==
X-Change-ID: 20260219-eliza-bindings-phy-ufs-3d95c2377aeb
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1149;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=w1BZRiXo12G6i9XeilLkcRvoTub29f90OZK87AyD/z4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBplzeLO5Fsgiyqm2zNaxpGTQfME/4XcuRH9t2C2
 fDSz4m4ZYCJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZc3iwAKCRAbX0TJAJUV
 Vmc5EADIYYpN/xUQo2gf2A7DHVNaZtwSx/BA47l2HhpEARwmyUj1hq/n6fJTyTsQcyCRRSdXC72
 10u2ikmdP48bYVK15uviapfSptanNs5rKjg1pl5NG14IJOvUFZGWWkVPZaxXpAzbWbFiRj9V/B4
 waqARaF//bykoYLTx1XjFEhWZTZg+UiBwVP19h0E6f0Dn7F8nUBmlurNnd+4HGj7ezytUvr0Z2R
 YKuF28wkwk7KOU4mqeEkN303Yf2EINrFMofaVmbFWuokfN7eFeT4pApn3/KA2QoQSIsVPuC2hrc
 hEktb3uzJbdCdvODG3c6HkahLCAq53NYNDP76xU14k1XxcBIR7NSQGznYdSjx1e96ebcyMoMPhd
 C0UhShNj5UouATWETTuwXTHjE7IjgA0YqCqesrjRA1pvXJoIfAXDu+dFFTtbIZVfneunvshdX1Q
 +08YUOZajDISVtCvIIgObAO4JBryxepmxHAc0uMuvTyDTKZ0dnt5XeJ7MqhhsHRI1pRN0BPw/9u
 beeUmorWrHydCRYFw79GkeOBJnkDhRkbqd5Jn70zWBPUACFxxmUu9cG0nCrE+phkuuMOfAZdnOa
 jYm72e2jIEXNHG5Vbq+F2OH+b7UL1UPY9lDVNnjP/BQAGrts6jX8Gp6ubb3ZNK/QDcamrrrBazl
 S6Afb5UokTvit7w==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: CLP9iHDJpREgiGtAC_R15z-g3kymVFMg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDE0OCBTYWx0ZWRfX9AX05oMlsXLU
 OOE1CLkf4TF6SmPDPACOFpN/wvWxBTV+m5UpSOWljS8FPB4Vy6j/OHNj6Cp8hDcg0e7lpDEvhI2
 cymNzpjFe2Yrfy1L9XiQR6O9UhuGCu0gXbA37sDtF8mfVQQghRkJubzcC5j/TRZhPmytlZTL1/5
 3msNIS1Y+tKRl3lon/VdXruynviM/eYKy6bEyWNDlbuXybE78n75wlZa4hLPkslrfxYcNZhjChN
 XGNJ8YKL8nNdZeXwSJdFe+deaVrCzEbCea9j3NF3VW3YlKXyCC0NpsWVx7k45JutX4MuKPYmD+3
 cG+MgpWq537H5YTsrX9qp980CRD4a1N6T+4rUc/FY8/lXVNlr4TDH08yurbSF2cACBblJErJ6EE
 /1dkIS3I9yBmkv3KL/3sqDWE4CPQDykhjN4WJo5ByH+51HvMqqR1Db1LhJ6rkYqANde5hy9nBy+
 WApfESBdIULcFdEykdg==
X-Proofpoint-GUID: CLP9iHDJpREgiGtAC_R15z-g3kymVFMg
X-Authority-Analysis: v=2.4 cv=daCNHHXe c=1 sm=1 tr=0 ts=69973793 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=aQZWcQzGOWkNwrqkSlQA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190148
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266689-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 206AA160929
X-Rspamd-Action: no action

Document the QMP UFS PHY compatible for the Eliza Platform. It is fully
compatible with the PHY implemented in SM8650, so use the SM8650
compatible as fallback.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index a1731b08c9d1..7120741ea092 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -16,6 +16,10 @@ description:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - qcom,eliza-qmp-ufs-phy
+          - const: qcom,sm8650-qmp-ufs-phy
       - items:
           - enum:
               - qcom,qcs615-qmp-ufs-phy

---
base-commit: 50f68cc7be0a2cbf54d8f6aaf17df32fb01acc3f
change-id: 20260219-eliza-bindings-phy-ufs-3d95c2377aeb

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


