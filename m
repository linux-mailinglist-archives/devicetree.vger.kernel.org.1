Return-Path: <devicetree+bounces-270351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNNaI3iYpmltRgAAu9opvQ
	(envelope-from <devicetree+bounces-270351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:14:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C1C1EAA4D
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:14:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9541930BF848
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F304738839B;
	Tue,  3 Mar 2026 08:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pps3kqrh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RSs/+g6T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9429388379
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772525270; cv=none; b=fzsv5gTfeygxgRgiVnT/zPkJNWWWTH2JUh0Pl80F3usNspMeXQO0eb8Rv50yCoZ/yJNaeAC6sSJ+aX1rLR/GOIXNkgMaJa+NorV7tbkVpx2oB5ALsIlVEBS57cf3K68KzTw7o3BnDTo4L5gEpGNDoJaiK0mWLRLghRekk4+H0cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772525270; c=relaxed/simple;
	bh=HZwFUQOQ6A7aTZLiMxZmYJR9QvaqliTJcqwhopazxpY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SGs64nwLfcQH73ULeluhO063CR3wAo4+QnBzPnkFFCHEoHyItd9EpfAlnBJClge/AzmDAN0TzVzYHLdAKq0VKFMn3ckL6oTSciE3kHlofYfehRrjxLqugr0dwhlpmx0MgNrfYSc4GSMUAytcRfkUdF4lzTGLWYLyz2Wy3DywOZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pps3kqrh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RSs/+g6T; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6237Fl1t3614817
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 08:07:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2Kl1wLQ1uXk
	gLFLhB/id2ti0lzPAVGQK+jUBMyUiT1o=; b=Pps3kqrhjjTr2AzzOEtQ22inpEo
	7yFv9lrYnv6eYqeDAkY+l/FbSEzH26BzPmK9YWl4NjM0Rd5HJwJFIlG8NThZDBI7
	m0SqakmPl8F5ZDRTkDmAGfVCVIcA87INRddUlSHsMhQ69qgRKCAuOOPtUUe17n3r
	IUyfD6ScrDIOF4dK3zTJ9VIyQZFVaAWYjOWLpPpshitYuVFV4mZ9HV0bwalR3ZQV
	3Rl/cnt6Fyt45Skjn8V91hTakzS24a0ctJraJOTUlqD9fi6OHI2gTIh37FyTvAAD
	0gW3flOUMiIxOfVQLym5KdpQLzUJEzXFB0FoWRFFNdJ1mxgufz+EbNgJRUA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnu3n852d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:07:48 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae4cdfc468so21112005ad.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:07:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772525268; x=1773130068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Kl1wLQ1uXkgLFLhB/id2ti0lzPAVGQK+jUBMyUiT1o=;
        b=RSs/+g6T1P0xWZkXmdJ/NXWZoBEhnFQwHfKT5C0pwKIGejoDPwLdyIyHrblbqCVYeg
         gelGMmAgUC6UK6Na9tOp+5vHzGYBCdLmvgsTM9jGY8WdCfa8Y11vDkmRL0KLa0wxoopB
         hdEHIY1UyIH29bCyKrP2kDE9Q3hWAfWWRjNAVywL9x1Rc6wWcDD4jn1U4uqVPk3B8O7W
         x+/ayUyyM6ayGtF1fTUGg7kx6NMeYP/SNpHLsmF1kfXl2mr98Mr20dbpKiBu10fi2POE
         sDWDNewxdxEqbDovIeCbRIC/wNUHbPGuH/CSGjYYRpGH6KQ5GsB3sk5AMX4dU6kGmxJI
         aBnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772525268; x=1773130068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2Kl1wLQ1uXkgLFLhB/id2ti0lzPAVGQK+jUBMyUiT1o=;
        b=ZmQnxbgkjcGlyvdYtX3KZxTlV+qM0OWLOB2aRRy3my+l701VDUN55rDkRypsR0Yzo6
         FC3aybUJGldS+g/DkO+vFD3+dhkSWefH/LCHDvHvyCdN+cJSiwa015cNGyN+Mzu2mSxR
         Y+q9l6wLeyZ+sJKYtvEML4vh34SpyGRdEdgzKqKURbXHznoRIHw1hCh8R3V/EM6t7RwG
         HlEUikL/MWIeOji7S1VX3vJRoyWtUrZt58uNzvbWnYKgqnZw4O9RZzCc/4DYdS60zrXK
         yyCEhn6M8x6jZKmcSk+J96Hk5caacq8duaS45wC7LWuMO1pT8AB/UIu/1WU0diJ/wUx1
         jLdw==
X-Forwarded-Encrypted: i=1; AJvYcCW5csR4I31ZdfzH0M6nZAXCiG0VwJXpPtZ+1DCpuJPNNaMudH8y+GTH4dTFcXnnGxF1SI4l0dbiVrnM@vger.kernel.org
X-Gm-Message-State: AOJu0YwpO9eFwN8pe8vPcEejDJyEVTbBm8KgNI/VIqZ6HZmU4S+6cSDr
	eqV6L78MiYddQdzSghok4E3gpYzHXwhEF8Wy2nI3bhh3ARqRjXPWAL9rWyWzaFavA39BCK5pxXW
	AB7KaBnu3b3x54IwZUvXGJKAKwCLKTS+jcZIM96P670Lz3mHTNiARpbolP7iwJPyAwSaFe7SF
X-Gm-Gg: ATEYQzxRUNDQmbsWHQ3Y5TKQOvFB12vatjTs+PJ/aU24jhwbLn1Zsl7luwnMYWMlZ2T
	Lo/eY/R4uyq5nOaKCULzeemJRVSSzqwOk5NG2DQgfCNoimpGNCfMmsY06pg55r8/3kNcj/qRyEV
	hmevCvPNEqSZb77jtamKIf2SNOF58zj17T3yzNzKqWt8B+fJTnz11L9cnMrCyMJxGj9d1zJv2Br
	5VAXsD6rJt4/x/6NTz6q9Y2fSD4UZHDURxNk6+w1aqy9ycqpq14aPQOQdnyCHq3XT9WMEYCPnmB
	pRPv1+5joSEcSSpOu+/wq1Rsc3ooZn2SkPqAUYV1qYfocr056rHXSMNBxOdifBD8YHGQLFq7cZ2
	vfDUpyC9tHp0lKg9CW5jVJf7BRAqMRwwvGIWLOods4FuL8HJEf31ijNc=
X-Received: by 2002:a17:902:d590:b0:2ae:456d:b836 with SMTP id d9443c01a7336-2ae456dbc70mr97979005ad.47.1772525267562;
        Tue, 03 Mar 2026 00:07:47 -0800 (PST)
X-Received: by 2002:a17:902:d590:b0:2ae:456d:b836 with SMTP id d9443c01a7336-2ae456dbc70mr97978615ad.47.1772525267086;
        Tue, 03 Mar 2026 00:07:47 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c3acea3sm1445883a91.16.2026.03.03.00.07.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:07:46 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v5 2/4] arm64: dts: qcom: lemans: Add role-switch support and HS endpoint for tertiary USB controller
Date: Tue,  3 Mar 2026 13:37:26 +0530
Message-Id: <20260303080728.479557-3-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260303080728.479557-1-swati.agarwal@oss.qualcomm.com>
References: <20260303080728.479557-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=JaexbEKV c=1 sm=1 tr=0 ts=69a696d4 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=ZrvUoS1E-TgtW8Atug8A:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: horN0r4CIHXeZ1KdUp5GsTzVVmrMQ3MR
X-Proofpoint-GUID: horN0r4CIHXeZ1KdUp5GsTzVVmrMQ3MR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA1OCBTYWx0ZWRfX7n+cCXKxz2X/
 e9zlXRSYuxNBhhS+LEYMwMqdPO6Mo2hAU2czJwjY8t9OnJnRKE7eGcR5lhOV/0InlJftfzhCwe6
 RtmV5T/C/H0fRixiOEqUYxoBDYHiwNgQwyCHEruslvx4zAsJ65xTdxCtKempPqpNF4FAV6PhPkC
 7VcEZkjvmNzk/ha0we52mFasSbHEjzyFZpQ3aul8XDE/aVR+CXE5hdCkcY/IYl+u4XjrhNL7F32
 SMwHEEFWrDVYCH+DTixvA0WFcxqfVst8sTDwpp1kuLs0uCnYsGXHVIsIXXQIqBMj1X/bxQLvBWz
 +eXXtvsARyJRUTlDyY2VvxTAlPxFS1CSbxtjkON5oAAQAGC2DniQgCr5Vsijy2LAnkhca7WIP9u
 PZWbIK+ZKhKomXAoGHP8f8sPAwulcsdpyD+lgxkf9lWnQUkBqaWp/mop51NKDt4MLIrs1LxNjXR
 tvl0xdURobN9Mm34hcQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030058
X-Rspamd-Queue-Id: E1C1C1EAA4D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270351-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,a400000:email,1f40000:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable usb-role-switch for the tertiary USB controller on Lemans.

Additionally, add a port node with an HS endpoint so the controller can be
linked through the DT graph to the corresponding connector.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 808827b83553..d0e63336be6b 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -4270,7 +4270,14 @@ usb_2: usb@a400000 {
 			snps,dis-u1-entry-quirk;
 			snps,dis-u2-entry-quirk;
 
+			usb-role-switch;
+
 			status = "disabled";
+
+			port {
+				usb_2_dwc3_hs: endpoint {
+				};
+			};
 		};
 
 		tcsr_mutex: hwlock@1f40000 {
-- 
2.34.1


