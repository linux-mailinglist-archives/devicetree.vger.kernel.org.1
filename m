Return-Path: <devicetree+bounces-265995-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBR/KG8elGk1AAIAu9opvQ
	(envelope-from <devicetree+bounces-265995-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:53:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C48E149608
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:53:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3CD4C301FCAF
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23ADE2DB7BA;
	Tue, 17 Feb 2026 07:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kNJc8VVR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jr+F1Bed"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A8E2DA77F
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771314763; cv=none; b=u28OqpEicrBzSx2mlZXlbnTozjiXNQF7zHSYa2UAoSj0iRi5iETaTt0Rai87t9ugwQN0ILbWDIGYGBt0QzgVbIotX1lpgT1BfDmd8/F2QeoYJ2EbzVzfpE5w1T/M9aEk+3zvC7M1Iym6O9IQIZ4uP6AzNMqP9NJ/GzWkwznGiA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771314763; c=relaxed/simple;
	bh=+X74KMWb2lVjQ9fnowKj6jei9ytZdwOYWqFCEBJ/bZs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zlbmlz7eHCXBw3dl2tPXQg0M2G6UWatJMIVh1Lv+txa0vuZmk/u6TSDAedFbbnJFAySTwDyqlsxUHqxDySM47FnN9oDPfPYPV6FM1ncOhOH3IKTfhnHEJ+WlwUfErvkPuK6qgNQvjj9EXz5i1d3xsUG+tekPkj/dL7uUMI9RP7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kNJc8VVR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jr+F1Bed; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H2BKQa1904854
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:52:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fB98BuCBiJhrIm8NgYodeQbl3q2SBFUZLmymOwOVjDs=; b=kNJc8VVRHNJkBpNx
	3GvJo5HUQnF7+5yIygZs88CjO0yep1DnWnZvAn7G6fvHfQyi8GELXDGAb1wpOej5
	dYMs9kk3uRsZ7+93Uixk8r3TRjmYbbWx7UjlMznxVoQR0AU8q46HhKmCuOCaugun
	p+GZShFEHyAKHGGLCIb57V8nufWYlOg6XQrEj4W7nEw1olzViaJJQRAhwIu2fA0V
	h6eYlId/B7mEtDofZa8qpzKq6UBNmB8kxFuZMHJd1RSuiVtZEyQs0loZh6PLG7eL
	m6rHTJb/kTkQO7GI5JuoqzobiV1QtlOkw1fekrAEAxeu4oe5Ku4gkRt7l4gXAwjd
	oilXLw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbnv9kp16-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:52:40 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-894709fbae5so115732986d6.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 23:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771314760; x=1771919560; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fB98BuCBiJhrIm8NgYodeQbl3q2SBFUZLmymOwOVjDs=;
        b=jr+F1Bed29IJngrvjHzRrx7dTX9a6s7Q/8ODc5mTjNUbE0x+v9yKBAtLpLYeKXhbXC
         se+vw1De5cFdqQ+XYWQJJsQdxIU2UDYW1sTHwmcXaAY0luhuM34VBG0nWf9LdpCe3gz+
         7zZpNXBQ3A6fLwfJXmLnnxzO6LgL6+i3DvgBVlNjfWC/UjylVjyi0Tby/EXe214tLmiF
         BeuucFQEAW72F2ZP2aG7ZFZtJB1Qdq8WzAiFDentySEfzyTTrnBhg4W1n2AiPNGu7eDj
         /yZMztzeuNTuHSJQ6sBmxLknR44hfcZtf3SKKAJ38LOFM2Gvj5lNxVVVMvBi6/s9sU2D
         po+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771314760; x=1771919560;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fB98BuCBiJhrIm8NgYodeQbl3q2SBFUZLmymOwOVjDs=;
        b=NFeLTFoFUoiNhD0hUzE4OUfn+h38rSwAB8d93iqSwc3WhJcgoq0UFrIPnIfiMBcnko
         JXAcRircGdq9P87JICQMvP9zzKZHMaBsc7bFFy7hOYUhpKTvy3u3wornAMeo349vZf+E
         qVkIpVp9aOOMG5tLT832GLAMij/F4v8Uw5FBwQJH5Blbj+9WOANB3Kviauk8OacrMeYt
         ndqXg65OQB2QbVtMyk/EnYrdj7d0kxUFH3P2R+O+il+TmJmY5atj9A6Q5TVXTYbYfA1Z
         /+nPpO1/NXsT7YIc5+nK1PB0rol+pA8WgCgAC9U8Vgr257cikL6Snsrw8fxN0wHE/Jzu
         ZBHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDilqEMfA8DDkvLk+e9yQ4Kch5Tj4Aq1RmZUzbijDR6aoSvY/5Vq4RD2l1d8CcN013uupooZD3RMAX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw74oAzvfooI+GYWulpmX5d6klvO6r5/GLU/MnzyXZ3fInFVo4y
	fbO3i8NBNtDlk5t8qm9t9cqstp0B8756RdH0xrK+r3IA5dWgntIVY2DlzyudR5MQrqf+lml3KW+
	nBM6JGSamC09WDeqppuxFLdyavr6EBYWa/Bc3bELoKsyt9Q1W46pbez7IYIGwwsuI
X-Gm-Gg: AZuq6aJCP4yINIuJhKMc0BpGjGfJY/grP3FXSYI+g5rIShKZ+zarS8FYLuYmaR5bLXr
	YY/uwFGTTozkQ1qJmCWvqoE82zK1lIjSYT65Yn4HAIWdf8x3/JChgW0pT4lSPBMUJLqsydWXZNU
	YPn31vjrRj6tYmkWEbm8jJyz+U08BP0yLHmIPMseFufFqLDLfJ1y4OaRrziR3nz9Fj4yVpfxRqH
	FDwwpEsIznpn5d3pke0PVDqeiqKybfCPsGgxlTBchOO7tB//CetY8cIOfmM+JL6ccgYxCU5YfNd
	nimHgxKUSWggNwu5BbqUVodu3/d4+b9qXY8+C3aUQnDaZ3Dgyhnzir8jNdnLsIieyWGC7Z4KV1x
	TX/7PrvTcNdPjk07qA43i9Ro3qcEZoQ==
X-Received: by 2002:a05:620a:319f:b0:8cb:104b:bf4 with SMTP id af79cd13be357-8cb424e0b11mr1585373585a.90.1771314759951;
        Mon, 16 Feb 2026 23:52:39 -0800 (PST)
X-Received: by 2002:a05:620a:319f:b0:8cb:104b:bf4 with SMTP id af79cd13be357-8cb424e0b11mr1585371085a.90.1771314759333;
        Mon, 16 Feb 2026 23:52:39 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac9d77sm29860229f8f.33.2026.02.16.23.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 23:52:38 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 09:52:22 +0200
Subject: [PATCH v4 2/6] dt-bindings: clock: qcom: Document the Eliza TCSR
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-eliza-clocks-v4-2-5d09f28d4251@oss.qualcomm.com>
References: <20260217-eliza-clocks-v4-0-5d09f28d4251@oss.qualcomm.com>
In-Reply-To: <20260217-eliza-clocks-v4-0-5d09f28d4251@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2001;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=AauMYzLc6gTEXz/GOQcSBdK6m37250bGHySZPyTqHNw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBplB47RwyeJ2mJ5FUwuIfaBvT9Lauhk8AoJjZwz
 XgQGsqjH8qJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZQeOwAKCRAbX0TJAJUV
 VkXdEACtgvqViLh0Z2wfrK+aZugUoSHnNX0WW9aQWspU4828K1Bi7ZuOBSo4oTbr33r/3vsAE2x
 yIWB7gCOtCC268fyrXVwfGp9W9Ahl/XiYX5qqff24+r0tK4lo7Dh1hK1lMAMgAEts2H7mmhclc2
 tkmlIlBZlg8TVZ3eIJ2R0+fOOyUbYO7XUBae8fk4QYKJZlD68x4DTBzQ/O+iZxA68dirTz/unsF
 GRIT9USjuckHKN7VU3gHhOtsSBp99+HXJ4G+IbazkGX1Yccuweudj7rYArBoD7e4dhSm+XWgQpp
 KLHOnj3LmEulmw/2ryUlzuhQvgccK5TO3DjYLX2fEJTvVMDc1EZ0kce5TPgM8bi4CmXK8Vmocva
 1lvhtOx1CgvGdJUylmmfPX45NOmnKO7DFp+qi6Eorwrts4x7OpghOBMqbzgVYPYQniyg9TTuD28
 w3hRLumurEaoKO43CFnUhcA2livWHx673DmhqejFdLXv+joJsJGY3fRd0XIzXKmgcKOZ5KplWdr
 xyH9cP2FZzaT/WNWBEtEtzqugA9gjfBwWju5H/O80bxlvoqhBEWbruVaOldvPPhXpRqhu49XOfK
 elCCncyireDFSBXO4FcoTaop7ljwQmDIUIORLoUUrnzc5VAvhrM8c5NehxqqI8UI6k47fAEjkr2
 Y6qQPQYrlJ2lE/A==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: QTbD_P7cqdtiCRH_HRiNlruP0MGqvZ1Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2NCBTYWx0ZWRfXzpG0HQA+b8OI
 DKzwSct9MqZSi1DDUGBjOt6Ia+HA5DsNOI96AumBwWu4EJqkPxy6+1yKSHA+VVDrtwlb4QjSJiJ
 fawlR6qAFt2Cx2yqcP2OzabfZFvliU+uEMlX1UdyZE2Lce9ozltLUvg/NdDp5RCtztaV+VvqXH4
 8HYqsEtfnapXZdc4CXBL61oLSO5vSERMBOzmZYKKmrOTV3r8M96H5bNABGKQGsFUADDm2oYfe/q
 lAW7p34Uwi62ScVh9ZO67WXyko7/rHGJ0guxp2JwR4nsKegVvAoc2OY0QxfH44usgO0gb3TX0sb
 HlQ78A3iNLi/fHcrHDaELB+dJD1Wim1RB4TGJ8AsPqtH2WNa5+OgtYbvaQMTbMibRCXhXlspIm0
 r7ASZJIs+1NWCgaFr1i4HtdQ5bseNvs5mNH/LIvkOtWcsmlp9sCNJwtoSy0bGWhrvqAaU9rnWFL
 8OxQ6GoSJP3T8YPdjrg==
X-Authority-Analysis: v=2.4 cv=b7K/I9Gx c=1 sm=1 tr=0 ts=69941e48 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=UWqaS1yFD4rTGqj9qVkA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: QTbD_P7cqdtiCRH_HRiNlruP0MGqvZ1Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265995-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3C48E149608
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add bindings documentation for TCSR Clock Controller for Eliza SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../devicetree/bindings/clock/qcom,sm8550-tcsr.yaml     |  2 ++
 include/dt-bindings/clock/qcom,eliza-tcsr.h             | 17 +++++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
index 784fef830681..ae9aef0e54e8 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
@@ -15,6 +15,7 @@ description: |
   power domains on SM8550
 
   See also:
+  - include/dt-bindings/clock/qcom,eliza-tcsr.h
   - include/dt-bindings/clock/qcom,glymur-tcsr.h
   - include/dt-bindings/clock/qcom,sm8550-tcsr.h
   - include/dt-bindings/clock/qcom,sm8650-tcsr.h
@@ -24,6 +25,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,eliza-tcsr
           - qcom,glymur-tcsr
           - qcom,kaanapali-tcsr
           - qcom,milos-tcsr
diff --git a/include/dt-bindings/clock/qcom,eliza-tcsr.h b/include/dt-bindings/clock/qcom,eliza-tcsr.h
new file mode 100644
index 000000000000..aeb5e2b1a47b
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,eliza-tcsr.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_TCSR_CC_ELIZA_H
+#define _DT_BINDINGS_CLK_QCOM_TCSR_CC_ELIZA_H
+
+/* TCSR_CC clocks */
+#define TCSR_HDMI_CLKREF_EN				0
+#define TCSR_PCIE_0_CLKREF_EN				1
+#define TCSR_PCIE_1_CLKREF_EN				2
+#define TCSR_UFS_CLKREF_EN				3
+#define TCSR_USB2_CLKREF_EN				4
+#define TCSR_USB3_CLKREF_EN				5
+
+#endif

-- 
2.48.1


