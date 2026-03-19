Return-Path: <devicetree+bounces-277803-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPXICcUBvGmurAIAu9opvQ
	(envelope-from <devicetree+bounces-277803-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:01:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBEB2CC56E
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:01:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 48D0730138F3
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D86752E1F11;
	Thu, 19 Mar 2026 14:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eHWYXIzx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JY8nZx9E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C329F2BDC2A
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773928854; cv=none; b=nWwNsQEYak+ltcNpGucEcg2W5M+gUXLD2Zx0wOf1DTraIrm16FxoRmNc+bpW8EJCWMbGGtchrwVpx3DJwzqt+s2M7XBtrbRetTssD9i+L1NPC15Ml5knZl6BtZz3aKKZ6arq82+hWYvc5rjlAsSK0wUoX71Ay/z9OsJWc2WHuvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773928854; c=relaxed/simple;
	bh=Db+RLStf10fqvPsTOJS8D+LD9vcSgoxmyOu+EKZ/uj8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=VLNDHFJ39FU3gO9LSXEScRD+oeOJv/1Va6TzmMbk637DlBrKcMzT1+O6gJLTh/7i1tY0O9SeoJtWLmnSaHoz0l1+N7JL93T1ZyA9wc2s2yW+hMtP4VCmIdKiXWSdHOu9nhOibOrxZnliNvidz/bvLm10OyaoGxDG+j+u/aO3hBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eHWYXIzx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JY8nZx9E; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J74AO01999443
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:00:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=2ksDNAb7X32ZgBziiGUtir
	Jim8i8uxLM8FZzGLG0/NA=; b=eHWYXIzx5MpFCZevXWR3flCu6o1ltL1BjbQAcC
	mJ6wg58DskNheLgtdxM3jelXJXeIvEhTSeO/weKzbXvSYj2yPwe6ZGLJ54l9JAty
	QoY5K0aQ+4wBt+WyfTHvLRPg2YnOjegOKfFt0j8z9QCN73DuifrqJWP0LFTwp7pR
	IfuRvWn4LEzczog9QcdOUKgfrR1vVRAhe26CIX23WHcZ9vhUmfcoy3bZ5NPxuGHE
	XafvSrjlcQjUL8SxPp0sY6Qt8Zqtot5vPXBXF6HkNGNlPqQog5zEZ6ZXH6/k2Iz5
	4AM5OD2dlk2dYcTGGI3s9uAm7Ddlse1yoi0Coq/4qxveeyNA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyscb583y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:00:46 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd827a356aso691149885a.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 07:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773928846; x=1774533646; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2ksDNAb7X32ZgBziiGUtirJim8i8uxLM8FZzGLG0/NA=;
        b=JY8nZx9ENkIlLSPCaxgLbXLAm4tYVPPc7kjIPQgm+ISFaKo3DLlOBNdXeNhASK8GEu
         jV6LHvJ/7dKCLxdsnI6n5wpE/F9rMC0pXFCXmz7wlWNHxgqETpDlc4eQJt1rPHWIPR16
         va3IpB8egJdHbqsu6xwP9KMV2p0cIcuyAogT7Swnqg82b9qJg5sCaOmc1sw4edBlAkPf
         QOAxZrHawExYNN3qAU5KXwusdRAniqHMttZ03q4dd30hxf3S9mHmFVZzj7QAnHskgOjd
         8ApfNhaNWtco0in21PZkjW0DOnza+Gw9QYJfLXfElcNH9841GlkT78xojGf97emXgGay
         sV7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773928846; x=1774533646;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ksDNAb7X32ZgBziiGUtirJim8i8uxLM8FZzGLG0/NA=;
        b=mFDcF/Cq70Lhg2SvvNOikaTF3cUEnEHaHB+YEH2a9SSEwkxzfV8C8TTgpkUzGHbcQM
         haWnJS21/V1NoPlGHXAzEFUoJB0+sDQht2Awe/GGvRrEmrrQFPZdBGpjsCnEGFEMO1F3
         p0DkoVm22wvy0G35FjQBYrtymtbFFe6KgHWTntlXCDIiqbEzHPpypxs0YuyI+bovNGhV
         BSt+GFpynRCtLjR5akPPfwOxMbbpzItlEBKG+P33RBhYS7MjX5jfCtw5kazUslTBBHoS
         eXrOzvbHaNI9yO0rD0ZMBvW39IGGiS8n/X7gGK2TmElv+J2pbWzpuB36/xLS7Ckwj5kj
         w+KQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnGjFg3PI+NEC40F0WSCc08P/uzNq7bodW88oGA0ovrKqoXV0wglQQ759tS4MZa9E7unSKzn6/SjmV@vger.kernel.org
X-Gm-Message-State: AOJu0YwC3093qVW+y+92g75OxmOMmcloIObv6STn/WSyMd2koiK/imNS
	K1GmOSjU8WMKQjyRHW1TLQoMJoPbRa8TP5/nlDHS++VllWObwJ7udNpNEobAR0z4jM4g+uyN8I2
	C2PJegJtLTsDAbHVd9+5RCc0YdTDmQ6CHcbm9ahgeDH18UMDPJ+GXChiSlKFQYhqy
X-Gm-Gg: ATEYQzwnExCa4bPUp5igfIgQtJWZk9ARwLTsIYMGmQzkDLTAyju1ZjTamLj0bXt6PuA
	tKB1gxMXHUnQ2DXMy32OCw3w1DsxIptRhTYzisYljKRAHr4dEVtwhOu0K01C/WVcOWDigFVbhle
	8lsA3vv9uHb+vXtWpfV7vjiQ9WtXML8ThEmbvVL0Dzg9iqKO0Tiz2VakUlNRJA0DuQCElZcxLyD
	nlQiZAOJe7z0E4Trs4wn2yBAOmB/2nN8w8IYzY5yXbcKfvkk7linP+EBgxZ0+/RFUtytqAVe2uh
	eiYX92liU1lkI3Y2N5mlfwU2xrn5NtZayIqH7gsQQOwamYmgkkLOHnT7Ymy0q/pqNxufyps/OzM
	RZfHzW5Rwrr/f3yghoSsFQyzt0xk=
X-Received: by 2002:ac8:7d14:0:b0:502:9866:7547 with SMTP id d75a77b69052e-50b14858360mr93255321cf.43.1773928834902;
        Thu, 19 Mar 2026 07:00:34 -0700 (PDT)
X-Received: by 2002:ac8:7d14:0:b0:502:9866:7547 with SMTP id d75a77b69052e-50b14858360mr93240141cf.43.1773928827178;
        Thu, 19 Mar 2026 07:00:27 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8c49073sm61861905e9.11.2026.03.19.07.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 07:00:26 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 16:00:16 +0200
Subject: [PATCH v4] arm64: dts: qcom: glymur-crd: Enable keyboard, trackpad
 and touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-glymur-dts-crd-enable-kbd-tp-ts-v4-1-dfe67a134996@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAG8BvGkC/42QTW7DIBCFr2Kx7kSAbbC9yj2qLgxMElr/BbCVK
 MrdC04redEq2aCZ0fC99+ZGPDqLnjTZjThcrLfjEJviLSP61A5HBGtiTzjlgua0hmN37WcHJnj
 QzgAOreoQvpSBMEEaVlRTrWRVF5REyuTwYC+rwvvHo/ez+kQdEvZnw+F5jtLhsUZU6xH02Pc2N
 NmAlwAPeVaRra8mW8csukp2zvHHr73WGJi9Aj9P0+gCCCaVMLWhOdfNUr6KSQkTCs0END/QWGM
 tS5oQKczJ+jC663q9ha3eXz7UwoBBKTBypahbKfaj97vz3HYp+S4+q8TCN1jGn2N5xHIupUIsd
 CmKf7D5Fps/x+YRK4QujTlgvIH5A3u/378BffbWsFACAAA=
X-Change-ID: 20260309-glymur-dts-crd-enable-kbd-tp-ts-c80c0cb78940
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=5608;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=Db+RLStf10fqvPsTOJS8D+LD9vcSgoxmyOu+EKZ/uj8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpvAF4lm6bjOWZiCiDpyYV4BzTLFRFn2BvNOClc
 M3fZdMtto2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabwBeAAKCRAbX0TJAJUV
 VlLHEACm8e75VfvKg51QfzpYjQnE3sKpoKPSn+ejMu7x6YzfNhOrxguV3hYOW2dPxMAb6L8vzFN
 evPQDGQIU40Cxd/SoTg/HHCixJmSqshoMD0t+LCGznwwIACq6QInaMm5/TN9HERVbDJoKLwBzwQ
 mdnHiBD0s2RVLqkGjPn/NsZ4+h0KHML0kKgKWL2KtNJinE8QBj2BuApceEMQ2/5HyggkdW+Zu7s
 wHLCWi25g0GQdRA7BEye5l1G5Pc86z+kl8yn3nB2ufnfUzSpKAPeVTX822gu7Bwoy/DCQmblAjF
 SBgjKMWcAWueRz9Z/L7GKoKLNbDoIgXrhaxKWeovVRGYi6c3aemTE7nmxQmnC7Qe14OQvoUe7wB
 QWazn4D1U9YXh62jLXnxgiJId5IJOtbGIXoJvL+8RT+zKzy0f4NWfPAmRNxOLhXa8oxtFEnGhPn
 9U7ecfGBo0N+SQE942OqCgeylJgBBvTuWnQ+r/giQi0dM9Ypx74mBFR6ggnoF+eojJ/padw4Vo8
 3wZREs6CHcxmxAcyZzj6g92BAFB08vkastIL9IDNFuoQDQw6f1QoTqG3Si/vhMMK9W9hCfdcvRb
 xjtc5/CwBbpah/6TFUWVvfNeb9Gdk6jzSO5DSA8aGCZbnnbC/u1uAhP7Gac5p/gZXQQGRBLEdtI
 PYwNrxFwHiwzOWw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: _-QG2m9VNh-wSxBLxsE6zSyxjYNTjnPv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDExMCBTYWx0ZWRfX/yYcwCvFlRvQ
 uWl0OVS3rOJJa42kR6N7ahQZ+M5U/Bd42952UprHomvzH9FbmNjenVPbUB4svKls5xCufCUmFb1
 xpwjLFiM6EJ8UdOFbtbinQe3HWkp/LZ+ghq30UsY+UerDsMhD8FXJxYjaWdzG24KL14I3sFLe5M
 Z978l8b0tVoZo63rG+e4KsiEAFVUqnSuZztCUgGgG5zFcWS3RxOpPanhkzYp5/o2GRr0kWDL3R6
 mq9HSx7anvcPIWjBpVHkmk7F0hj3qsMS+Dm1lou3AXZ9EgpJn1EB7lHdrQQTWja3ZqVPXygXij9
 uSkAqzD/Y4uPEDW6qQAOgjB/GsR8gsLitCPiD4TYnpIkD61oq6U4rvVStQLXuN6I155kIKMn2mj
 8zV72jfvBXK1q7z0fdP6shNxCp1XVuSS7IQNGEY3gzv50h48Ui9qIDpzvPUFwqX0D/h/UELQYKZ
 QmRIsJJ0AOZxR7739Rw==
X-Proofpoint-GUID: _-QG2m9VNh-wSxBLxsE6zSyxjYNTjnPv
X-Authority-Analysis: v=2.4 cv=PtCergM3 c=1 sm=1 tr=0 ts=69bc018e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=2kyE8ewySwwSx3oCXYsA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190110
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277803-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[keyboard.3a:query timed out,abel.vesa.oss.qualcomm.com:query timed out];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6BBEB2CC56E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On CRD, the keyboard, trackpad and touchscreen are connected over I2C
and all share a 3.3V regulator.

So describe the regulator and each input device along with their
pinctrl states.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v4:
- Rebased on next-20260318.
- Dropped all dependencies except the USB DT and Display DT patchesets,
  which are needed for this one to apply cleanly.
- Link to v3: https://patch.msgid.link/20260313-glymur-dts-crd-enable-kbd-tp-ts-v3-1-66c5ddfee97d@oss.qualcomm.com

Changes in v3:
- Picked up Dmitry's and Konrad's R-b tags.
- Drop the output-high and add bias-disable to the reset pin of the
  touchscreen default state.
- Link to v2: https://patch.msgid.link/20260312-glymur-dts-crd-enable-kbd-tp-ts-v2-1-2277bee4c564@oss.qualcomm.com

Changes in v2:
- Rebased on next-20260311
- Re-ordered pinctrl properties in vreg_misc_3p3, as Konrad suggested.
- Dropped next level dependency patchset.
- Link to v1: https://patch.msgid.link/20260309-glymur-dts-crd-enable-kbd-tp-ts-v1-1-56e03f769a76@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 117 ++++++++++++++++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 38cdcf662ba7..5089ff7cdca3 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -13,6 +13,8 @@
 #include "pmk8850.dtsi"         /* SPMI0: SID-0                  */
 #include "smb2370.dtsi"         /* SPMI2: SID-9/10/11            */
 
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
+
 / {
 	model = "Qualcomm Technologies, Inc. Glymur CRD";
 	compatible = "qcom,glymur-crd", "qcom,glymur";
@@ -139,6 +141,23 @@ vreg_edp_3p3: regulator-edp-3p3 {
 		regulator-boot-on;
 	};
 
+	vreg_misc_3p3: regulator-misc-3p3 {
+		 compatible = "regulator-fixed";
+
+		regulator-name = "VREG_MISC_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&pmh0110_f_e0_gpios 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&misc_3p3_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	vreg_nvme: regulator-nvme {
 		compatible = "regulator-fixed";
 
@@ -446,6 +465,64 @@ vreg_l4h_e0_1p2: ldo4 {
 	};
 };
 
+&i2c0 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	touchpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+
+		hid-descr-addr = <0x20>;
+		interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&tpad_default>;
+		pinctrl-names = "default";
+
+		wakeup-source;
+	};
+
+	keyboard@3a {
+		compatible = "hid-over-i2c";
+		reg = <0x3a>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 67 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&kybd_default>;
+		pinctrl-names = "default";
+
+		wakeup-source;
+	};
+};
+
+&i2c8 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	touchscreen@38 {
+		compatible = "hid-over-i2c";
+		reg = <0x38>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 51 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&ts0_default>;
+		pinctrl-names = "default";
+	};
+};
+
 &i2c5 {
 	clock-frequency = <400000>;
 
@@ -626,6 +703,19 @@ key_vol_up_default: key-vol-up-default-state {
 	};
 };
 
+&pmh0110_f_e0_gpios {
+	misc_3p3_reg_en: misc-3p3-reg-en-state {
+		pins = "gpio6";
+		function = "normal";
+		bias-disable;
+		input-disable;
+		output-enable;
+		drive-push-pull;
+		power-source = <1>; /* 1.8 V */
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_LOW>;
+	};
+};
+
 &pmk8850_rtc {
 	qcom,no-alarm;
 };
@@ -664,6 +754,33 @@ edp_reg_en: edp-reg-en-state {
 		bias-disable;
 	};
 
+	kybd_default: kybd-default-state {
+		pins = "gpio67";
+		function = "gpio";
+		bias-disable;
+	};
+
+	tpad_default: tpad-default-state {
+		pins = "gpio3";
+		function = "gpio";
+		bias-disable;
+	};
+
+	ts0_default: ts0-default-state {
+		int-n-pins {
+			pins = "gpio51";
+			function = "gpio";
+			bias-disable;
+		};
+
+		reset-n-pins {
+			pins = "gpio48";
+			function = "gpio";
+			drive-strength = <16>;
+			bias-disable;
+		};
+	};
+
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
 			pins = "gpio147";

---
base-commit: 54526d6c29ce58d5399cd4e2237d631266ebaaef
change-id: 20260309-glymur-dts-crd-enable-kbd-tp-ts-c80c0cb78940
prerequisite-change-id: 20260109-dts-qcom-glymur-add-usb-support-617b6d9d032c:v5
prerequisite-patch-id: df42484b224c01014637ec5a8f56bab459890557
prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
prerequisite-change-id: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750:v5
prerequisite-patch-id: df42484b224c01014637ec5a8f56bab459890557
prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
prerequisite-patch-id: 346f2db0933c551a039f63b945f989a5c8320657
prerequisite-patch-id: 919020405b70d588fa4356a5cbfb44e67006102e

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


