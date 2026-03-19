Return-Path: <devicetree+bounces-277761-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oG52Avztu2liqQIAu9opvQ
	(envelope-from <devicetree+bounces-277761-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:37:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB2D2CB39B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:37:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4EDBA301804D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39FA93CC9E6;
	Thu, 19 Mar 2026 12:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="djPF4Jyb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KZ9uio9T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87042E03EA
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773923823; cv=none; b=RjY8OgyG5JJ9trnVtDCbYCupHEAIOXTeDxh33uuZQqemVWBKtfFXHmpgooG0+ebUIltRcuuWpB2lGg8Xcc1nG/mxtHCN8XCG2s4IXCxTmHjxiW2j+hQIjMauoNMy0vx7HPwaYKXtskVrD9AOFJW+qex2S/5c5dGEdAFHcHoR1MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773923823; c=relaxed/simple;
	bh=8SYPkim9X6qXVAubHx8oKxC1J3sj0mpwtaVlUaNat2U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XkNPOOtLx1oFA8ggt/vzBZGptf6xcJ844TRZpk4XWXAUzlrPJJnA0a5cd0NEq17L70PoY7Rin1iUgUyrPVR10MWIOtsxwVJEL4KHr3054lnaMh6h+38eSWbbmIwEmquF5SFM2vJv3brn2E0wDzLVH7UGa6mKbBucFo1Tx6v0baU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=djPF4Jyb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KZ9uio9T; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73uf52544573
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:37:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	afn4LiHq2besuiTCST72YqnJ3kyAHUsIVMS9WpKRqJU=; b=djPF4JybiZT0zi1G
	lSjeZYDs8dFTv05YCv5Ei86+dcaIxgD3/JKlgZIhjRlWiiCi4USohOrPxtBFfB6x
	UweAVySe4Y8933Ssgo+6dxTprZJLgCe1iWNl8a+Fod+dw9NBeoZqkcQdsE00Ho/t
	y1cUonsN9oIuIbj27UZXSZCBUeRhW5tQRcX2afXgKIppw75/NaShxyn2pgZpR1aI
	VT2SKCPIIudW5/4fcFQN9yJXqR35CnzjFPVX4FAr5fSvCIvdeLGCG7Crk4XR+TJt
	eQKY1cWqVQGatWUYmvIoW0pIj4OVz++ZawPgH03/f9xmVCvSZ0eqeTzWal08xyHm
	BzvNcQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0957sgy8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:37:00 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-509007aea22so48874311cf.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773923820; x=1774528620; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=afn4LiHq2besuiTCST72YqnJ3kyAHUsIVMS9WpKRqJU=;
        b=KZ9uio9T6Layd/V27g/AqYLUo7ubMcPJJk1bUPGHNOJ/PqgBdyGuVJKEtJQHMNq5M5
         MJOWkP3efNqbcJ56rKOn9GTS61Z3rF75jN33d1DWaw2d5CSczJf5ZXp3GmYeh1E5aJTt
         jfNKw72QoN6lNkPaYN0RpY1saK9yQb0IU+XCXXj177rd4xxzP/rRRyBRfWJNE7pC3aQE
         VFIzp5ruSWg8AK/xBuMGYc1yTOVD9wSUlKiuv5NRiYQAjf9TrBJOvS354j3kDOueGheM
         zuwX1j9pSx3x/SOyuneX89GZHUne38KueZ653acregYq59u1iwQkKhyHrffccyWlweVi
         2XPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773923820; x=1774528620;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=afn4LiHq2besuiTCST72YqnJ3kyAHUsIVMS9WpKRqJU=;
        b=b192mWquNSZcVt6D4M8UxKBNM18XudRanAy2YzUtgVAIQ2sQH3ID1+HOmc4tF+3uxY
         BkdqJTOEPwyFBObUt3qwyOhDcfyW49t+6d/BfYLLFZs8kifC72Hzj6dWdZsRP6eqYVxZ
         ZPNuRo9fEtaSE6LU/U8gq6B1ipSiLBrNr1doqMjAzWKuIfCi58l6xjfg6rjY0cxSDV0d
         2kdNW0fpGzwtSIYcN1UKrWbyWcC2ookTpmKpykbvWy67QkI4oPyUlrb/c5JahmXrUSw5
         xFBbsXRVjhBGgKLOjiaBy6XyNjafIxPJ+ZoyA3Oun2IoVvIndfwxQ6Rz+5tya9nT0dEq
         VCuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFaPx6Gh4QcJV+V/JQSgjSnrMUMXHlWR0XKa+ZsWu/vZNkg4CnF7TTqMICgfOqlds9yDd8aoeVDwwC@vger.kernel.org
X-Gm-Message-State: AOJu0YyieEvNXoTN41A7Mpmk3OZRsvqt+Wm/95B9UXdRfmSEUazXV0o4
	8zRbc6TR3oWhZLSRXi63FYr5zV/k8P5vyW4XnYO2IoXkqynrexo+0NbuWkpISN0DU+iVe0YKNd5
	1R2EL9DgvQwqM6sWGNaYKZ0Jzot4zWyb+vKAVaxG0O43xZF9Y25PZ8pNGvwwj2A3g
X-Gm-Gg: ATEYQzxh9Lw2/reP3Jrd01fBJ+POFDKwVWu++uUM7rjYZe9Y9OI71Qc+Skqs0o4z9Xj
	ES0Pni5GyYfZ6ODraOR4sIEWNDoTFdZWi/oVOHoC7FMyeWPEOsoNU4urbyd0desx5Z4UEYnlWtq
	wlfJmGKFpP5QvGGYqjsYXBFBmLzUfDzgMRTZJfKJeSvaOMkVtBYCxbB9OU/GhOR57NOkg04pLjG
	ljsi0Q1xR77vlBbM3mcu4SOxEbb9DS7bvgcE+oThQHpgURFXH9ydGHoYOjy5rfEvC1sncgf0kUl
	9UwZZ2Qu61JUOgMFuxEmZ0GqLE95yvhkQl+lyKcAnIEjZnkMLHx41kAgzcpp7AVKjavZEYuiILE
	twM59FwZGt0CE+6mN8G23NenTeQs=
X-Received: by 2002:ac8:5e53:0:b0:509:382c:1c63 with SMTP id d75a77b69052e-50b14798540mr93044131cf.17.1773923819566;
        Thu, 19 Mar 2026 05:36:59 -0700 (PDT)
X-Received: by 2002:ac8:5e53:0:b0:509:382c:1c63 with SMTP id d75a77b69052e-50b14798540mr93043551cf.17.1773923818950;
        Thu, 19 Mar 2026 05:36:58 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f463d6basm44962075e9.11.2026.03.19.05.36.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 05:36:57 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 14:36:45 +0200
Subject: [PATCH v5 2/2] arm64: dts: qcom: glymur-crd: Enable USB support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-dts-qcom-glymur-add-usb-support-v5-2-b1d9c03d5f09@oss.qualcomm.com>
References: <20260319-dts-qcom-glymur-add-usb-support-v5-0-b1d9c03d5f09@oss.qualcomm.com>
In-Reply-To: <20260319-dts-qcom-glymur-add-usb-support-v5-0-b1d9c03d5f09@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=5723;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=jmSd0bWL3yUn7Ie0PvFtXFUE+CylPgHn2zLjd1NKi8s=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpu+3gMTFZpzNTtP5WVBNJztn356SrcTJPhLDwf
 vkxE1OsFd2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabvt4AAKCRAbX0TJAJUV
 VvYwEAC1fXhApy54lAMOREwpIHIi5xqp8cfnzvpSAjIpyNZNPDbHLyhta5+3FHvMPNlJ+Ier34z
 rjhXolclwCB4bx8E49FwekDcAFSjpdCjtwXcG+FeBEOMf1VAZRDABUQ9OFyR1yD4vyL0yLxMkpO
 9HlmTetJi4smMY7qjmhGyCxX0EA8URPc5YF1rZyYUgv7sWPtZQKt0co3iClQ8Jxvx+js2QFCD1s
 i1GTr/GiSArw5jInV5g05zzoqRvUBPe+cA3adtUQI1TzFC52GseGx84I6WgIsVyAhv8IaToN0ha
 o8hp11FTCLizsFYM0KNkLiW458nfI9YF/XocXesOIeKonTVRSqpXDypbknpenrw4HFTkNok3UsI
 Qhwu4zi+Hnb92e6LQ5dxRiyv63QbhqzLhglnvLjhKhuoVXwIKBEvvaParmOlKA5DoeviqCcrW7Y
 QRf40VwGBfvf5i+JeUBthjohsfAa0S8GP6SD3LA/PoIzMQgEzqmtImrsUJPD26USghZP2p/WE/s
 TJofD0SMfLqDCtUGl2/5PBbsIawg+IJ0fvqCcfXv09KBnk2KqMlbTlrk95Ps8e/MJBesUmA2vgC
 ldBmNJoG4YyKSJxYau48aXLMN2g1Hq3Gt6xzI876KtkY2G8aLzWfsaRnUW1JPkSzfCK8hYkeJuw
 T3MseKZUkXVOF4g==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: jA4G90uV8vMdJ2BCPIMrCBXBTPl8oOPq
X-Proofpoint-GUID: jA4G90uV8vMdJ2BCPIMrCBXBTPl8oOPq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA5OCBTYWx0ZWRfXyTkq2TOxi5XA
 PYlF0mRPmrEMgHPu+TLCfGnROuA1YpulrVxAjmuj48ZjM1SVTtz9311xQYmRWxrDTbb5FDQTuoW
 wsCtWv5hDCLwaYpGCTDSwJBmh6NxSQ6WWUtvkktKckr9qKi6HzrwzLoNrBdDDf0v6B9nhrvdFNt
 5++ScUg4NEWSjFhVRPsIs/Z2qzmlcSU6gLCOHL3v2xivwXZ9itNBnHQ9WeWO3YYjx+vN18VoqCV
 9NPSMpBVPU7uI+q1MDu/78A36a7wJiMDV+LJEObeC7haID0iFkDZwmtlFBxICTRUi3R6lq+4HHX
 /02gksBjOJmSpqkQV5G4wvTjOjs6b8QapFJhvmmgKlm+zySdMXeaWsdOWiqMBzHqyhGnjJS6iGm
 ONdjqmV9bbYtySnV6UkKEmxDxkIUF+BpCxL4xU7UpJfzbn9qshdjPnbq0b7d+2/voFAmN7KW2zF
 NwDyCHLpbESWLA3wYaw==
X-Authority-Analysis: v=2.4 cv=RZedyltv c=1 sm=1 tr=0 ts=69bbeded cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=UaQ5raezdk1POPUwhdYA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0
 spamscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190098
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277761-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.1:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.43:email,0.0.0.47:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1DB2D2CB39B
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


