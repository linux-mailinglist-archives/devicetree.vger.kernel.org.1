Return-Path: <devicetree+bounces-274363-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNcDL6H2sWl7HQAAu9opvQ
	(envelope-from <devicetree+bounces-274363-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:11:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8DA26B3BF
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 00:11:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1766C3039690
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF0853A16B4;
	Wed, 11 Mar 2026 23:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kAhNPS96";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U3CRvmSb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99AC43A16A2
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773270683; cv=none; b=EN/dkTGXrvi5ZoEDrpz+VJI0vHg+Px5YU6cJQS0muR8IkCJNMb5PjWYikCXXcGaaVltx4Np4xlZtJJ1nIyu9B+WeLvDyhKhQ7WWaiqtSNVYhVw+ddhnsNe/fLIB/ckbzZ75YgQN701NYobrLwrlAbjgXR3swAi+H28REizPD8tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773270683; c=relaxed/simple;
	bh=7SgfF+m4y4qkZZ4MM7brkOD95hQhDwXPzYdcwXQ6onc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TtqsgVDPVX6vL3Q6BXw+a+pjDVtFdb1SQvrl8LDvbExCq6nHEax4C1tVhFn57Rf2TVbNZeKPY1wZOCStILpWMWHm7X62Ef7w1vleuijWr5ASumwbckUL3476gkBm+N7RsoPzTIutneZsx0US8b2wGiMGnl27LR0JLGfvcBl3aoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kAhNPS96; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U3CRvmSb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMMmKc1058955
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:11:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1PSMSewwFaNxOsZmFxKKK4CERKmfK0hRmla0SEnYKKA=; b=kAhNPS9674nNRA/K
	DaMngzaS8qLbW9RRg50Q0VXR9pztBmxWvndRP1EzwME3Zm1iSIpKTV2eP4WSHr0C
	e35/LydWMtEqnJ7w5S4PD4b1ITYnvOeFzv+F5iCbnm+WMJ4qbI8gclIosfbVmPf5
	wRzzNp2NKo4E3/tRn6MbCFlBvfs6bCJVC6Sa2yM2zb4LVco2ID4Dn5PrFXmPaPav
	a/MXuFL/RauS3nB200ujLt8vvbFO/9dmvjKq4G9Tv1C+ano6JBrNES0t4LoPXk6b
	W0YKiE3bNJ+4aJrFSBL3OSZRaietwP2rTtls+l/aKcVFy/Ao1abpVlPD5E9Aaung
	Bja0ag==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4wg3qm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 23:11:21 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c7381a95fffso179940a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 16:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773270681; x=1773875481; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1PSMSewwFaNxOsZmFxKKK4CERKmfK0hRmla0SEnYKKA=;
        b=U3CRvmSb7GviwVeXrtBrB7WFj7GrTT0bgzTo3Vs6ufjFiabIpNmCN7bgt9XpF0RVgH
         ro/qWkdjRB9ph82ZRFa0r85Iy1B0yj77DMgSKbL4UtDannF/q1RMujqsuxl4XCiaWM28
         XwKxks/dVdm9qVMh3k9mpjXZ+JmLYhtCqx6y2E/bVrkHmJ+snuZZG+vqJePFFeDCh1fN
         QhlWsAhNpn4MjoMYqGHP/OKyMCgPrCpdrVwvIEG3uj06EeX2PvfkMBt7yYGUntbJKcmJ
         5NTAR08YLHWuBssu1Pt6DxpmduFOnhpfyVj50P95H25Dor7zFUfcLsDhK3mjldvVAxR9
         W9Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773270681; x=1773875481;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1PSMSewwFaNxOsZmFxKKK4CERKmfK0hRmla0SEnYKKA=;
        b=hh7M20KgdQqX+iytZrzW/+QXDm7QWbAYGJmPdn07r6jOJv9CD6ZpnQaeLcF0sHlCKa
         JTxQGTgerXqY8sVCdA672WOPn/RJLhjIeOjnIpyGHU6kb7wdTKE77MB4NlqzHOVrfY0i
         QuTzWnL5G86xzvMTaRj5PUE1BLrS1wqoSrAFA0b9TQ+B7DlSNcHVkiMGoDLU7OwfKVWP
         OdiQQ2euuC97cBPPlG0LbJ+j8bk2T3U0M+tV3PDY4DQUdZX/ybuMKK4e9QlP5Frksfo8
         Gg6/yhqTFYJ2IEfGU6qzxern7zPEkOYcneLPWfdsP1HiheYT64wQnLFs7AxwOKy05uiA
         mRkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXexWnHw3/fARt2+mJZ5GJFwfJXEYwoV9q152LBP7IviOkCQndDr9/Ymk1cqR7CC7828SCl4VOyjL0C@vger.kernel.org
X-Gm-Message-State: AOJu0YyCmupgF8eyDzoFydi6xl47YFOHSpiePNWDThO0FJUSUWdkGr8U
	88wV0CDn0fqsfygvaPxau1sKynDzRG2TmcLOx4GX47tSB3kLsO/fNpSbcHYPnm0IxEPCR3g3PJJ
	IN4cVFS+HR2Qc4pPjPkEcunbx18EJxV/4qk2YsjwarloWd16/qsR7cYpdYV29AwE9
X-Gm-Gg: ATEYQzx27Pmr8l0yU0sAPe7g54mTfkpAQx30I3Fyc8OuLIXecXoIJKVGrPecz/kCkYw
	ylCTeYtN5+yu3ld6It8Ggz16YZ5ibyZr0zYm5wb0FwsOy7UTvn9QFtF7LeUP/Sdn73xCul8WNgs
	JTFVFoeWu84cfyRF20zjHKUKtHxXbzygty2q4glqfrLsWyvV82nhM8MU02VMwSDaF3Ww/PmLsjO
	aewCuXfTdFXA01LICjEEHJPFfUqg31koA+r4t239jU6YF0t1x/M5JK3uf84467FxYZcHSPRl4O9
	g7kKNst8LoXa6OZGukgPdmLGOIAiTydQhPdPKJ78w+S/hCWTyWsTGeubW+OM9m7gb7jrjX48jel
	fWRxJpQBO34w6EsA2X2xk6b30NnfBIDVEPqtIvDPmVG82GA==
X-Received: by 2002:a05:6a00:1895:b0:827:3c74:e6a6 with SMTP id d2e1a72fcca58-829f70f12aamr3916419b3a.58.1773270681083;
        Wed, 11 Mar 2026 16:11:21 -0700 (PDT)
X-Received: by 2002:a05:6a00:1895:b0:827:3c74:e6a6 with SMTP id d2e1a72fcca58-829f70f12aamr3916379b3a.58.1773270680598;
        Wed, 11 Mar 2026 16:11:20 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a0725facbsm774569b3a.20.2026.03.11.16.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 16:11:19 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 04:39:56 +0530
Subject: [PATCH v8 4/4] arm64: dts: qcom: qcs615-ride: Enable Adreno 612
 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-qcs615-spin-2-v8-4-fca38edcd6e6@oss.qualcomm.com>
References: <20260312-qcs615-spin-2-v8-0-fca38edcd6e6@oss.qualcomm.com>
In-Reply-To: <20260312-qcs615-spin-2-v8-0-fca38edcd6e6@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773270637; l=885;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=S8ChkxoJiEfWRobXqSPIArBIIqpoLzaXwucidNtz5YU=;
 b=ASQVT4g+NGWx2VU/GbnjDyag+gLoYIqCbo+e9J80l9AlKn/0x54a7YwT5MfauSzpuc2EU3bh1
 ZxV9MLvZWOXARqBLfn54RHq1j97yTkxw/8AWWkAUcEYXgbJx+hAq0F+
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: P15zomagNiKOhk5FysBKs47UmkG9Gcie
X-Authority-Analysis: v=2.4 cv=JcaxbEKV c=1 sm=1 tr=0 ts=69b1f699 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=DDenb0FKNr3EH7qfFfMA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: P15zomagNiKOhk5FysBKs47UmkG9Gcie
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDE5NyBTYWx0ZWRfX4S+NpQlHxQ/X
 Ka9Dofrq+YiVTGQAhdj8sL7fXjIjbzltcQtOVl2C0+kHbvsqNllwAAM+4b2H/rIT74X8UcEW3fC
 6Yr+GTL9RZjdkNqO8+CCjkf+DGfVkV7unjCPZ8ZN8FbzOcWATEd+0cSHRKZ1w6D+JT2rhED+995
 QkjnBZXNDYaKskhhnI4eXvnLDb6VIGkxEDgPyj1h28o9kYU0V4nQdWKs1+mLbDuBDUqS+uibX1p
 kHrP8vdWMyUP053nv53WbtFF6nr/zD7M5FXFawYwO3GR0eDcO+WcYiPs0aOg0G3FWQIISt/npZd
 wgBI42eOEXTQQUrAy1+BNgAYOJ/36CRmk5nUQk+iFSjgYBjVH8dFr5LiWbaINK3ovwykx9fJq0u
 r9vROO0+7Dw7nKJwNXagcXVEC+yWoQTq/mIV2XfSfldoRJcTJY/3WyYer5hhRw/9Fusb3h9R3LP
 CIKhyKG6FweUq44hqmw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 phishscore=0 clxscore=1015 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603110197
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274363-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,quicinc.com:email];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,poorly.run,kernel.org,linux.dev,somainline.org,gmail.com,ffwll.ch,linux.intel.com,suse.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3E8DA26B3BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jie Zhang <quic_jiezh@quicinc.com>

Enable GPU for qcs615-ride platform and provide path for zap
shader.

Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 4f5dca49e15a..0bb1ee06127d 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -372,6 +372,14 @@ vreg_l17a: ldo17 {
 	};
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/qcs615/a612_zap.mbn";
+};
+
 &i2c2 {
 	clock-frequency = <400000>;
 	status = "okay";

-- 
2.51.0


