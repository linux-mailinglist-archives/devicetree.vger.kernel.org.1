Return-Path: <devicetree+bounces-277842-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMozIFwSvGnbrwIAu9opvQ
	(envelope-from <devicetree+bounces-277842-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:12:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DE62CD7BC
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 45ABF3061BC2
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86C1E3DEAC3;
	Thu, 19 Mar 2026 15:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="arK5pQlm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TfcyFlHM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B66E3DFC75
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773933023; cv=none; b=IAtOM50SAePX9vCV9XyMfU0NrgKQL3ftg2CXwBJr5gdTpvkhyi9hg5RKlV9tADfb2sjasczPRC3ddUqGx2mpjJ0zGe1HiYupB91BNxnaYAPU+ndJm6+JRHjyWIJCqh/5Ys/ytYrpmNO31emHZcwOmDBj/WHPQQp2L+iCJuXR+fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773933023; c=relaxed/simple;
	bh=712tYFd2LejZ481YBDwJMV4ihA2THIfN0AVHe7B24Bk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jzf3zFtN3uTdctGacyCGUr7Vh4L2LLI9K32Ocwc0Hag5YPx5WtoYrL7RyKyi9HMq5zjlv0IHYlBHjhBXm60N1xuqr9x5guz+8Bh3TLptNPpFUOrwtfuMGEXVOUuxIbQj+nwUqEWpUm1ArMZzKzFGC2vUSHqrkMV3sR83gv2fGVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=arK5pQlm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TfcyFlHM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J740q0770558
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:10:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Qy21oTHWPQB9GqrJOZRuLLS0a9N8g/NrFFNrOaR80VE=; b=arK5pQlmr8nd3Yxk
	ziqe081jkzanKo8d/OHSCagJ51HbxaTo+/wjdmIJt0ALV7bBbuNjSTQUaiz9ETMq
	pVEsBqPfYhgPwlpgMP507xc2SPcAM/Xr+pAX0JyHKMU8X1Ay9O391RhCMnORCZok
	hviwVSFYMt3r91bLKgFHjh4yR2dSOH9A5p7BaY8XE1I0q/JzRBfb/IG27srLmZkW
	Mnd9xdsHsJi3uGuOileMOutYJHYxwtrn6ttufUsF3FIGlZVCs5yeptJoVC8o2NTD
	ZBFWsaTwb+d1ogIMEt/eG0P2NKMRntXdLZjqbzdmqJcoG4h1H4a67z4I6PaY0sZY
	vWsfiQ==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d00egbmtw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:10:08 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-9484dbd65a7so1878047241.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773933007; x=1774537807; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qy21oTHWPQB9GqrJOZRuLLS0a9N8g/NrFFNrOaR80VE=;
        b=TfcyFlHMHWD83I8XrZczaKeMy6XvecdR6SPn9lMqP9xA0MRtYyvV0W4lYlVvcAbVPl
         f2BFCkXKUr5O6l8Z+G37NewmQonGOAuWZ05kP+lv2X7PclzxKYZz7GVIdUFWPhWxB+Fl
         kpD0NEo/L6BhnVa4LB954iwXfFrDaQf7fj9Fr78bjWxSu1ohVzccrPF46TjpwnmxR8QG
         7la44w5wjG9Iu4MdnN4x2CzUyTM6lpLKT2ts3TpwY08tS1QLqz+I88e2zWCi/jv6YPVi
         z0OKpPtDjLqa9qqBe+ta2dQue5yvME0ISFoVMrXMZchOH03fObB4eUs5WT8l+7WAeykr
         TuDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773933007; x=1774537807;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Qy21oTHWPQB9GqrJOZRuLLS0a9N8g/NrFFNrOaR80VE=;
        b=gejhL2bf26ru2tAMDc/vDkfzkcNRRibBJEsa50/AZA6xhemBPaMi5sa79Ar7cTY098
         LbpM05/BIFsht7UQ4y6Ir8gcD/fTMK6JG5UZMlBkjyAg1x2lkDa5cVzY1gflGiW9PmCS
         eyi0z0Sq6Pq000BDbd4olX0VbKhrn/IyUyEAp+ot1rcJl9COy8G885ZOXHPd1+z4ohge
         5FlR7TmB/Dcn3kPvfLUqkeh56MhC8j8H9isPp3F4o1ZhtCZagRShxKQQQYM35lDf44k/
         UAJjrpWYimAidqsjqNKriUSTPJdQRbYbIpwHyXm785bw/2zl4Y+nsb3Dub4a9eTtggpO
         jouQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwX0z/QL18QPzlU4F2Pr03kxTq0NgCUf939TSp+hpDRbAHzLo6veGgT5xem8KBBbdZV0wT3Zg+QjGZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxVNPqR8GNgupNE8jhYVAeMASAKpVDUNZsBecr+Yfqsaj1d/rAt
	sdGSMQeXkbG6K/g31iZfHg9uAwj4I0cjKfXxYHZioboDmnMNKE4dYscKCJ6Xz/2kT+JKcD7G34/
	zUvANkuDCBDkqbEQu5JlBXLp6vXwyu3G9wBZGraUnHxpYxJF9KfzMVS9HKzHTpPO4
X-Gm-Gg: ATEYQzyoTtF42wdqB3oDweJKuUKuY66bOpG7OM7pzrq0QIVtM808XNXAzDxTbbLZQlG
	o6SEF+1e2HJ5yrWqN9yLIcxi62rWeSfRJSUyPVK/yv3lrBK85HPmy9ZZ1lxuvU+6aw4oCAIrGSb
	K1hgBlB1Icg/n4JImuFAoC+T/lhc260GEwODDHHmUA5d87kicGIYrZkucc1Cbo1On4sXCGcJq8u
	8ijBMLTaOjaAL/X2D4VTYmHU5d1fKA26aesTUtKE1pqsPAXFHVytxxl5F/Wr8Jf6W5YOX4w7nTB
	BXYJbCO+hVX3yMJ18r9KqYEvkeVWNSd1WKzf+xfpHV+hA71eod7wR5XOle2emsOTsfXfQY69lcZ
	lyVDdUX+ttKYCnoT5bTbHymnr6m0=
X-Received: by 2002:a05:6102:41ab:b0:5ff:f6ee:1089 with SMTP id ada2fe7eead31-6027d11ba7fmr3167264137.13.1773933007378;
        Thu, 19 Mar 2026 08:10:07 -0700 (PDT)
X-Received: by 2002:a05:6102:41ab:b0:5ff:f6ee:1089 with SMTP id ada2fe7eead31-6027d11ba7fmr3167242137.13.1773933006758;
        Thu, 19 Mar 2026 08:10:06 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486fc61dd4asm32274565e9.14.2026.03.19.08.10.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 08:10:05 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 17:09:51 +0200
Subject: [PATCH v6 2/2] arm64: dts: qcom: glymur-crd: Enable USB support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-dts-qcom-glymur-add-usb-support-v6-2-fa305b40a90c@oss.qualcomm.com>
References: <20260319-dts-qcom-glymur-add-usb-support-v6-0-fa305b40a90c@oss.qualcomm.com>
In-Reply-To: <20260319-dts-qcom-glymur-add-usb-support-v6-0-fa305b40a90c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=5790;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=EiqUaHPmquDd/xJyBfNXiMWYImfQU88MJQ82XQcexO0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpvBHGEWFT5HD9cf+1ml3+acMvO5QuxCMeGTrlS
 Z5+kA62TQmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabwRxgAKCRAbX0TJAJUV
 VsIjEACfiknfphiynV638IxTm8qQwEujdrhhwPX4XqpN53q1SluhCqXDO9NQwQJd50aArGnaiJ8
 KHnK2tcsQaqKQysdLIsdHZmSh42JoRW4wY21IayFB36EAW6BervlX6MD8R0Ix/P4exvHbdmHiye
 vRcBXERgQO84Bvn6JsAUy193wQz5FTJprWY6PMtKrB/QxopK9gvKPIArPyp/SPHagll+ilUrDye
 BvDfczel1yCkSaqzCgboMVA1l5CsSE3GbSn3sF7qWmBNc2MByrw6KmqnklRGxJRLzOLUfQQBIiy
 iJHZVRb/Vg64bRt9zdQtK+I+KH75CFTSQEtEMCMMnBGmX2vpmabI9ByzIIXSPZoL8b1DRa91kyI
 9JY45meOHMCUDxJncPayKPyuG8Z8nes/Z8JrwcOmK/q1BO0lh8c43YsaXLznoCaYIweIlIzB9bG
 98ULIYBrnwlj3pIpUUS4Zq9vdTNyqDASMY0p8rjre872dBYveyg8ka8KRfQTL+pisWB+wnGnqJb
 mAJS9zDWXIdWQ/pNDWFbZx9maMjE34cbKEwNn0XNBlUeIzjysI7IZhtoscNF8GK5CBn1wt27BUT
 1cLtijaZXdvrsUwsjprqAe8r3C19Sn8w9oBtnM8v0HBfjb8e1C0fdYb6KUbWuuKhdTttJaeRQEj
 41GA0YdvLVajQqA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=MMNtWcZl c=1 sm=1 tr=0 ts=69bc11d0 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=UaQ5raezdk1POPUwhdYA:9 a=QEXdDO2ut3YA:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-ORIG-GUID: -J5VwQFMjfsvo6x_BOBGVmsVN6v_HyW0
X-Proofpoint-GUID: -J5VwQFMjfsvo6x_BOBGVmsVN6v_HyW0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEyMCBTYWx0ZWRfX5MIDPZv3nwde
 2hV41b9Q+9EZE0x70paXZ0k6CHdbIA7/4AvT4T362yOBPkmwBaVK+vGQgv/sGZjfWWMYkUbiC3f
 3CZr9vB+wiyTwJl93xvFsE4bQ6wV6on4MMMAWOfnxYpITCqfOnI4HFPbL719nxGIZDh6Kf9Xe1x
 O2NUZv+xaKEbG4WezNjEHAQT5UlptTH1KXi6Fv6BhiqNIf64vLAIGZT6W7H5CRB4TsUQEIo1Nf+
 HyE+nYFXtegbQ48+GaWya7zLl2tEsMxri4+o62VopEuvENb4bGHZ2Za/5t2iOI3Z3jnps/EQsRo
 WQzOyRj1P3HR318k8S29qB/b+uSxedmR4VAde+essWrPrjDMu0QnlNoOMV6yC/f+rawFQUV7sHu
 P2ftmpprX86v4XqR99urI2UJ4m6tdLxZqoyen86MBDZN8QvCas+86HJghRV8Fp/yr3d4j2+hXXq
 Uf8U+gJG8x9QN2VVIMA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190120
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277842-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:dkim,qualcomm.com:email,0.0.0.47:email,0.0.0.43:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 21DE62CD7BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

The Qualcomm Glymur Compute Reference Device comes with two Type-C ports,
one USB Type-A port, and a fingerprint reader connected over USB. Each
Type-C port is connected to one USB combo PHY and one M31 eUSB2 PHY. The
Type-A port is connected to the USB multi-port controller through one M31
eUSB2 PHY and one USB3 UNI PHY. The fingerprint reader is connected to the
USB_2 controller.

All M31 eUSB2 PHYs have associated eUSB2-to-USB 2.0 repeaters, which are
either integrated in SMB2370 PMICs or provided by dedicated NXP PTN3222
devices.

Enable all required controllers, PHYs, and repeaters, while specifying
their supplies. Also describe the PMIC GLINK graph for the Type-C
connectors.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 214 ++++++++++++++++++++++++++++++++
 1 file changed, 214 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 877945319012..a7b30accbd1e 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -60,6 +60,69 @@ key-volume-up {
 		};
 	};
 
+	pmic-glink {
+		compatible = "qcom,glymur-pmic-glink",
+			     "qcom,pmic-glink";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in: endpoint {
+						remote-endpoint = <&usb_0_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss_in: endpoint {
+						remote-endpoint = <&usb_0_qmpphy_out>;
+					};
+				};
+			};
+		};
+
+		connector@1 {
+			compatible = "usb-c-connector";
+			reg = <1>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in1: endpoint {
+						remote-endpoint = <&usb_1_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss_in1: endpoint {
+						remote-endpoint = <&usb_1_qmpphy_out>;
+					};
+				};
+			};
+		};
+	};
+
 	vreg_nvme: regulator-nvme {
 		compatible = "regulator-fixed";
 
@@ -367,6 +430,36 @@ vreg_l4h_e0_1p2: ldo4 {
 	};
 };
 
+&i2c5 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	ptn3222_0: redriver@43 {
+		compatible = "nxp,ptn3222";
+		reg = <0x43>;
+
+		reset-gpios = <&tlmm 8 GPIO_ACTIVE_LOW>;
+
+		vdd3v3-supply = <&vreg_l8b_e0_1p50>;
+		vdd1v8-supply = <&vreg_l15b_e0_1p8>;
+
+		#phy-cells = <0>;
+	};
+
+	ptn3222_1: redriver@47 {
+		compatible = "nxp,ptn3222";
+		reg = <0x47>;
+
+		reset-gpios = <&tlmm 9 GPIO_ACTIVE_LOW>;
+
+		vdd3v3-supply = <&vreg_l8b_e0_1p50>;
+		vdd1v8-supply = <&vreg_l15b_e0_1p8>;
+
+		#phy-cells = <0>;
+	};
+};
+
 &pcie3b {
 	vddpe-3v3-supply = <&vreg_nvmesec>;
 
@@ -485,6 +578,16 @@ &pon_resin {
 	status = "okay";
 };
 
+&smb2370_j_e2_eusb2_repeater {
+	vdd18-supply = <&vreg_l15b_e0_1p8>;
+	vdd3-supply = <&vreg_l7b_e0_2p79>;
+};
+
+&smb2370_k_e2_eusb2_repeater {
+	vdd18-supply = <&vreg_l15b_e0_1p8>;
+	vdd3-supply = <&vreg_l7b_e0_2p79>;
+};
+
 &tlmm {
 	gpio-reserved-ranges = <4 4>, /* EC TZ Secure I3C */
 			       <10 2>, /* OOB UART */
@@ -596,3 +699,114 @@ wwan_reg_en: wwan-reg-en-state {
 		bias-disable;
 	};
 };
+
+&usb_0 {
+	dr_mode = "host";
+
+	status = "okay";
+};
+
+&usb_0_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
+&usb_0_hsphy {
+	vdd-supply = <&vreg_l3f_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&smb2370_j_e2_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_0_qmpphy {
+	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
+	vdda-pll-supply = <&vreg_l3f_e0_0p72>;
+	refgen-supply = <&vreg_l2f_e0_0p82>;
+
+	status = "okay";
+};
+
+&usb_0_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in>;
+};
+
+&usb_1 {
+	dr_mode = "host";
+
+	status = "okay";
+};
+
+&usb_1_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in1>;
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&vreg_l3f_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&smb2370_k_e2_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_1_qmpphy {
+	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
+	vdda-pll-supply = <&vreg_l1h_e0_0p89>;
+	refgen-supply = <&vreg_l2f_e0_0p82>;
+
+	status = "okay";
+};
+
+&usb_1_qmpphy_out {
+	remote-endpoint = <&pmic_glink_ss_in1>;
+};
+
+&usb_hs {
+	status = "okay";
+};
+
+&usb_hs_phy {
+	vdd-supply = <&vreg_l2h_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&ptn3222_1>;
+
+	status = "okay";
+};
+
+&usb_mp {
+	status = "okay";
+};
+
+&usb_mp_hsphy0 {
+	vdd-supply = <&vreg_l2h_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	phys = <&ptn3222_0>;
+
+	status = "okay";
+};
+
+&usb_mp_hsphy1 {
+	vdd-supply = <&vreg_l2h_e0_0p72>;
+	vdda12-supply = <&vreg_l4h_e0_1p2>;
+
+	status = "okay";
+};
+
+&usb_mp_qmpphy0 {
+	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
+	vdda-pll-supply = <&vreg_l2h_e0_0p72>;
+	refgen-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};
+
+&usb_mp_qmpphy1 {
+	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
+	vdda-pll-supply = <&vreg_l2h_e0_0p72>;
+	refgen-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};

-- 
2.48.1


