Return-Path: <devicetree+bounces-278218-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6H4FGxYovWmr6wIAu9opvQ
	(envelope-from <devicetree+bounces-278218-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:57:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0672D9291
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:57:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD39C3055E7E
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 689E538D018;
	Fri, 20 Mar 2026 10:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h7JdNQG8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EuibFDMD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8540239182B
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774004226; cv=none; b=b/qpbYPXncah/d+oeuFoZSs+77uo82qZ8omoPOI9amyn1yvkimngXxVFO0wFgxtVcIj30VoXAQQfhFzuQgKDpDTD34a6bt7Q4N7PU4KGB1/YTAnxVYvcV2rMaH4CFUIQVsUV7JiEEGXP/8NBmxK7FNBnhDB0u/p5qYMA3VRMZG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774004226; c=relaxed/simple;
	bh=PCeD2oyR0aY7Iu0f5yywwnUcZ4xEyOrnoeuxP7dfwIY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=udo5stkSLotfOxgu9xp44LydBy8X+xRiKn6lYHvUJIUXTr9HLcMtniWmsBc+15KOeRwsiom6BqsHMkh1QXm8xAldrBK3n6mQjgaMpPkzlW71S3vxUMloJFIVTt0Co24dclp80pHqHrQ8MgP+AgxAczlRh2/7QAv5BjjOBuc8qU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h7JdNQG8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EuibFDMD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62K2XnMs1525646
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:57:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L0AqchjyAgfcwBpxKQXs7g3jk+GHoFpyk05egRz8ug0=; b=h7JdNQG87nBNPo7j
	YljZim9g+DvlTeuMYio2H61B2WHIW44nNXtSoJe+/Dj0Qb07U+qlTZiSpoxJjB9a
	y0Z8G2L9IGZRPCqtFPsCxIhtbBh6E7IiSP7hDu41iymvblHF4a4wep7F2Tzo7vD7
	e5AVNUaJ5ymKm+5ZPGz9qTSDn3Kj+ABjtlE+X52xCwTguDiuS4F+qTrl5uf4CXGe
	cbf8MQOBfv33UsiS/Ko6HRMFlchk8VEIekDAtJdErgaaN59BETpZpxG8XeHqw3jc
	TRl6QpEWgZoehY2AcaT4lJt67LtdMMlrdkDWWes0lJEynHSyBLjvOnEqk+7gAQpm
	4FO/Tg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0jt935pr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:57:03 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd722c1a69so1319207085a.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 03:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774004222; x=1774609022; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L0AqchjyAgfcwBpxKQXs7g3jk+GHoFpyk05egRz8ug0=;
        b=EuibFDMDLzXB8UsJntehqCpNzlfbZfDeOdgNTUFffYl1y+wzZZ2uxRbgDy8kwNZ6uP
         G6lZrnw6iuRq1AZVErTAHlS8VVylTwA1yFTSQeq1x8dBpOvxuQWliwwslZTdUvkK4kqI
         OFEnquOzlOJB2OQJbSAJAdbWEkwcOKSkt9WvasQEhr4C4rlNTSz3qzR8n5ZyciDZK7AV
         AtrWBokY6QjmHZTHKAEqsOQLcrJkRX2no64bQ3IkFOBuTXY3yxTeeaQNy6p7KsHvYXzl
         bG7Sl/HtH6GH4k2Q3JQYU+ZB4ASdaPg/H3uWNFSBbqt4JDt7wh6SqHfglVWhQKOyewRe
         dabw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774004222; x=1774609022;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L0AqchjyAgfcwBpxKQXs7g3jk+GHoFpyk05egRz8ug0=;
        b=Up3Ot6CtcJOkLHgm1LtEWs7YUFKdlegLLtk2D8EitY3KLY5bJkO0HKWwfcH5C5D4dk
         Azr3zDN+nbr6/5fT7hznDN9bNTRIp+VQAvfljqt76eGjph1G3vaRx7iKvDqWo9XQVIJo
         2UdjqqJVvCsjwfsWJ5/PGcpsIsuIewTnO73ffSNiM3jUvzu5WXiWcguyIByHxWMrfzJU
         /jou1ssTZe5LsvRiX86Ad23/+cleEG0UFRvTXf5ReAQbL2PoGblI8vg8gvGVQovpqTMP
         XKWj0s3XMQEJS47seDDDK+E9UDPqacgO3Huss9TP4xy6w8hqNPUWIOT9Lp1d/WhXJ5T2
         6u2w==
X-Forwarded-Encrypted: i=1; AJvYcCXaW/1fkO7MqEm4s7CFMyc9xnaaO7qV8ygoHfEWsTa5rLVRE1fn3+YVO+X5jUMDoHGBUTA3q0+Qi6r0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7AsRgT+TDa3S5Q6MTucRaHd/EAyFaPMQ3x27YtiydAn7D+zWd
	qFk96UFLH9Iz48+0szNjeT36qtkEBqyyJo+lK5gOsH0pRhzC7jbzUMBZgOKY/mpD/6bnCC179tD
	bcE/jiXRFGUMPTeNtm8MlIQMbcckV943Dj6izDTCI3i3RsnQ1VKeGjVVN1vwilZWZ
X-Gm-Gg: ATEYQzzh+wfamY2gJHn8omztsonWsjWbvtuwaeTla1/vRxec7etT9NzOJU/tjDaLx/z
	ooM1E4KZPgfLAWZRRU0vPvpODKO0vPY4EfO5pd5Ys+1gZcG37swf9E9PKZ37AO3ciP6mMuZm+Sp
	ZjjLgZQae3ygp2rpNuAc4ZYjk7s4TzxVfMPyKewUzVpbPHrZNRlPdOTtiPVdC14Yl1zt6hVUBEL
	AiGIc3k0M1v5+r77baPmDXOPxHhSN9gelY9AOQeEDzsqftTNKYEJFfTRZMupoRAYpqYnfc6MQps
	IoffrX6Yvt+mMPJGPxQdyAcS9T2GmgykbV+sfIf7CU1vKW1ICvF/RlbgIiEMHr0bc/pkNvnVCa/
	MvE9FsyJzvv1pz8+ET2fOPs8qYUk=
X-Received: by 2002:a05:622a:53cb:b0:509:3940:30ee with SMTP id d75a77b69052e-50b374fee3fmr36334701cf.49.1774004222058;
        Fri, 20 Mar 2026 03:57:02 -0700 (PDT)
X-Received: by 2002:a05:622a:53cb:b0:509:3940:30ee with SMTP id d75a77b69052e-50b374fee3fmr36334201cf.49.1774004221329;
        Fri, 20 Mar 2026 03:57:01 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486fc4d90f4sm103911555e9.1.2026.03.20.03.56.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 03:57:00 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 20 Mar 2026 12:56:52 +0200
Subject: [PATCH v7 1/2] arm64: dts: qcom: glymur: Add USB related nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-dts-qcom-glymur-add-usb-support-v7-1-ba367eda6010@oss.qualcomm.com>
References: <20260320-dts-qcom-glymur-add-usb-support-v7-0-ba367eda6010@oss.qualcomm.com>
In-Reply-To: <20260320-dts-qcom-glymur-add-usb-support-v7-0-ba367eda6010@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=19158;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=ftG2wpAL5mfxWVJXsbnj2V827vXkB+CruwiqRI0N4sQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpvSf235dZLOSVyz2/T5DctswkqUN8s8VQhftdj
 TFUazmPe9+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCab0n9gAKCRAbX0TJAJUV
 Vp6MEACC6JxHKgmjX/KzwVccmuHeor7BMAUIVIWcWS1azEcoVfFNHGOaNmPI1490JE6hVCHq9WZ
 VFcKi92M/bjxADjqKtU4myuaaYtMOQW/Ao29lbcbqSx41oNPtn9xGQuC3s0COsum57WGtsiEI2k
 3kZW0pihVT5tyWIJsPHb/BlZaJ3ppFIf5AUuYWTpaPcyzXBX5N9MHr19VO+7/H0XueAEI50oeUJ
 50pHWM4voZm/980UFYU96wGcA4aUxQ3vxQQUYy3za7ALGTPbyTeq9ZEQuGIe/VL0nAT24kwQVo6
 1QeO4SR11K33TAsqp2RIKe1Yv3gvYgI6/tQZznLLgUBCzGlU0fRE0ISFLb1eny5g7e8FA32wSGE
 YkzN+eO3A38V0VWERx/ZW5CHjr+Pn0KEVDBVENb1i+EeMTilYcILAoTdJKEPYTyLLwIgJvr7WWz
 v4Ycv/VrrdwDpLqHxQ2Ib0sUm58Em9h0MW0mi6bupNL1DYYKvWf1ZO16mb0AjmFWmzGyDnlBXAz
 InXg4/dZaKyOTp1ZmsFzhZnuReWQHS7bFRKmcA/QbPk+X3EbsdP461XzbqcHSLGna/VpweQia2u
 sOATGZ0rx2gK83Y6dCb9M4FiBTAlYfWavjkBLMgFFbDVdok1+tBMTvRNS9MBvI6PdhtuEsmeiQ/
 GfUwff+eZpI/FAg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: h_pR21etGBC4RCCyGrE7naAPSG0n0xTz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIwMDA4MyBTYWx0ZWRfX/xufa5DjKREM
 C+ktkzQ+Y2HMVhCUbQOYc0l7onz0foxH8Vho7W7glf9kvluE33RCP2U4w2k/CUDw4SRP+O6W29Q
 xpnBd0cEuJ0REnonbgzVOiu+fi0yj2yhl0mil3O6XrfdQf53MMja3mZdSK5MXKxugY96Sqi8hkR
 wSHRiMNlCNGI7LRtmsLmmCzaKcI88tiqB7GEank35pBG5fqSHI24hTC6YL4DWOgjbdH5MUoc3yP
 orQbIFFLjwNKzCBfJiX06F3hRuDtTJ/ymhR5FMvM1BxyBJAaOCLBRa65Qdt5gpe+ULHqxHyPNWn
 vMdNXCkreVKUvDshc9HkddK5c7Gz42mY1UXhBicTAEN2e3DQ9TC+ZUtFXnwjV8MTaMukJCrLN8r
 zBx3C51m9j1HHGZQF3cyKC41dr12mmXDBVHW6hsc7Zot0v3QT8hfZg9hQD+513DkBdYpovnsA3S
 hjudGoI+b1mtLv3CaIQ==
X-Proofpoint-ORIG-GUID: h_pR21etGBC4RCCyGrE7naAPSG0n0xTz
X-Authority-Analysis: v=2.4 cv=FKMWBuos c=1 sm=1 tr=0 ts=69bd27ff cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=8wER65Pd3tfT56eRIC8A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-20_02,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 spamscore=0 malwarescore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603200083
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278218-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CA0672D9291
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

The Glymur USB subsystem contains three USB 3.2 Gen 2 controllers,
one USB 3.2 multi-port controller, and one USB 2.0-only controller.
This includes five SS USB QMP PHYs (three combo and two UNI) and six M31
eUSB2 PHYs.

All controllers are based on SNPS DWC3, so describe them as Qualcomm
flattened DWC3 nodes.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 691 ++++++++++++++++++++++++++++++++++-
 1 file changed, 686 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index bde287f645ee..641707ba1e78 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -750,11 +750,11 @@ gcc: clock-controller@100000 {
 				 <0>,				/* UFS PHY RX Symbol 0 */
 				 <0>,				/* UFS PHY RX Symbol 1 */
 				 <0>,				/* UFS PHY TX Symbol 0 */
-				 <0>,				/* USB3 PHY 0 */
-				 <0>,				/* USB3 PHY 1 */
-				 <0>,				/* USB3 PHY 2 */
-				 <0>,				/* USB3 UNI PHY pipe 0 */
-				 <0>,				/* USB3 UNI PHY pipe 1 */
+				 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
+				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
+				 <&usb_2_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
+				 <&usb_mp_qmpphy0 QMP_USB43DP_USB3_PIPE_CLK>,
+				 <&usb_mp_qmpphy1 QMP_USB43DP_USB3_PIPE_CLK>,
 				 <0>,				/* USB4 PHY 0 pcie pipe */
 				 <0>,				/* USB4 PHY 0 Max pipe */
 				 <0>,				/* USB4 PHY 1 pcie pipe */
@@ -2264,6 +2264,254 @@ &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
 			};
 		};
 
+		usb_hs_phy: phy@fa0000 {
+			compatible = "qcom,glymur-m31-eusb2-phy",
+				     "qcom,sm8750-m31-eusb2-phy";
+			reg = <0x0 0x00fa0000 0x0 0x154>;
+			#phy-cells = <0>;
+
+			clocks = <&tcsr TCSR_USB2_1_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_USB20_HS_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_mp_hsphy0: phy@fa1000 {
+			compatible = "qcom,glymur-m31-eusb2-phy",
+				     "qcom,sm8750-m31-eusb2-phy";
+
+			reg = <0x0 0x00fa1000 0x0 0x29c>;
+			#phy-cells = <0>;
+
+			clocks = <&tcsr TCSR_USB2_1_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_HS0_MP_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_mp_hsphy1: phy@fa2000  {
+			compatible = "qcom,glymur-m31-eusb2-phy",
+				     "qcom,sm8750-m31-eusb2-phy";
+
+			reg = <0x0 0x00fa2000 0x0 0x29c>;
+			#phy-cells = <0>;
+
+			clocks = <&tcsr TCSR_USB2_2_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_HS1_MP_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_mp_qmpphy0: phy@fa3000 {
+			compatible = "qcom,glymur-qmp-usb3-uni-phy";
+			reg = <0x0 0x00fa3000 0x0 0x2000>;
+
+			clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
+				 <&tcsr TCSR_USB3_0_CLKREF_EN>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_MP_PHY_PIPE_0_CLK>;
+			clock-names = "aux",
+				      "clkref",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+
+			power-domains = <&gcc GCC_USB3_MP_SS0_PHY_GDSC>;
+
+			resets = <&gcc GCC_USB3_MP_SS0_PHY_BCR>,
+				 <&gcc GCC_USB3UNIPHY_PHY_MP0_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
+
+			clock-output-names = "usb3_uni_phy_0_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		usb_mp_qmpphy1: phy@fa5000 {
+			compatible = "qcom,glymur-qmp-usb3-uni-phy";
+			reg = <0x0 0x00fa5000 0x0 0x2000>;
+
+			clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
+				 <&tcsr TCSR_USB3_1_CLKREF_EN>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_MP_PHY_PIPE_1_CLK>;
+			clock-names = "aux",
+				      "clkref",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+
+			power-domains = <&gcc GCC_USB3_MP_SS1_PHY_GDSC>;
+
+			resets = <&gcc GCC_USB3_MP_SS1_PHY_BCR>,
+				 <&gcc GCC_USB3UNIPHY_PHY_MP1_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
+
+			clock-output-names = "usb3_uni_phy_1_pipe_clk_src";
+
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		usb_0_hsphy: phy@fd3000 {
+			compatible = "qcom,glymur-m31-eusb2-phy",
+				     "qcom,sm8750-m31-eusb2-phy";
+
+			reg = <0x0 0x00fd3000 0x0 0x29c>;
+			#phy-cells = <0>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_0_qmpphy: phy@fd5000 {
+			compatible = "qcom,glymur-qmp-usb3-dp-phy";
+			reg = <0x0 0x00fd5000 0x0 0x8000>;
+
+			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe";
+
+			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_PRIM_BCR>;
+
+			reset-names = "phy",
+				      "common";
+
+			power-domains = <&gcc GCC_USB_0_PHY_GDSC>;
+
+			#clock-cells = <1>;
+			#phy-cells = <1>;
+
+			mode-switch;
+			orientation-switch;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_0_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_0_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_0_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_dp_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
+		};
+
+		usb_1_hsphy: phy@fdd000  {
+			compatible = "qcom,glymur-m31-eusb2-phy",
+				     "qcom,sm8750-m31-eusb2-phy";
+
+			reg = <0x0 0x00fdd000 0x0 0x29c>;
+			#phy-cells = <0>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_1_qmpphy: phy@fde000 {
+			compatible = "qcom,glymur-qmp-usb3-dp-phy";
+			reg = <0x0 0x00fde000 0x0 0x8000>;
+
+			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>,
+				 <&tcsr TCSR_USB4_1_CLKREF_EN>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe",
+				      "clkref";
+
+			power-domains = <&gcc GCC_USB_1_PHY_GDSC>;
+
+			resets = <&gcc GCC_USB3_PHY_SEC_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_SEC_BCR>;
+			reset-names = "phy",
+				      "common";
+
+			#clock-cells = <1>;
+			#phy-cells = <1>;
+
+			mode-switch;
+			orientation-switch;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
+		};
+
 		cnoc_main: interconnect@1500000 {
 			compatible = "qcom,glymur-cnoc-main";
 			reg = <0x0 0x01500000 0x0 0x17080>;
@@ -3367,6 +3615,439 @@ lpass_ag_noc: interconnect@7e40000 {
 			#interconnect-cells = <2>;
 		};
 
+		usb_2_hsphy: phy@88e0000  {
+			compatible = "qcom,glymur-m31-eusb2-phy",
+				     "qcom,sm8750-m31-eusb2-phy";
+
+			reg = <0x0 0x088e0000 0x0 0x29c>;
+			#phy-cells = <0>;
+
+			clocks = <&tcsr TCSR_USB2_4_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_TERT_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_2_qmpphy: phy@88e1000 {
+			compatible = "qcom,glymur-qmp-usb3-dp-phy";
+			reg = <0x0 0x088e1000 0x0 0x8000>;
+
+			clocks = <&gcc GCC_USB3_TERT_PHY_AUX_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_TERT_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_TERT_PHY_PIPE_CLK>,
+				 <&tcsr TCSR_USB4_2_CLKREF_EN>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe",
+				      "clkref";
+
+			power-domains = <&gcc GCC_USB_2_PHY_GDSC>;
+
+			resets = <&gcc GCC_USB3_PHY_TERT_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_TERT_BCR>;
+			reset-names = "phy",
+				      "common";
+
+			#clock-cells = <1>;
+			#phy-cells = <1>;
+
+			mode-switch;
+			orientation-switch;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_2_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_2_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_2_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_2_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
+		};
+
+		usb_0: usb@a600000 {
+			compatible = "qcom,glymur-dwc3", "qcom,snps-dwc3";
+			reg = <0x0 0x0a600000 0x0 0xfc100>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
+				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_AHB_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_SOUTH_AHB_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi",
+				      "noc_aggr_north",
+				      "noc_aggr_south";
+
+			interrupts-extended = <&intc GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 90 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 60 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 17 IRQ_TYPE_EDGE_BOTH>;
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "ss_phy_irq";
+
+			power-domains = <&gcc GCC_USB30_PRIM_GDSC>;
+			resets = <&gcc GCC_USB30_PRIM_BCR>;
+
+			iommus = <&apps_smmu 0x1420 0x0>;
+			phys = <&usb_0_hsphy>,
+			       <&usb_0_qmpphy QMP_USB43DP_USB3_PHY>;
+			phy-names = "usb2-phy",
+				    "usb3-phy";
+
+			snps,hird-threshold = /bits/ 8 <0x0>;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,is-utmi-l1-suspend;
+			snps,usb3_lpm_capable;
+			snps,has-lpm-erratum;
+			tx-fifo-resize;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+
+			usb-role-switch;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_0_dwc3_hs: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_0_dwc3_ss: endpoint {
+						remote-endpoint = <&usb_0_qmpphy_usb_ss_in>;
+					};
+				};
+			};
+		};
+
+		usb_1: usb@a800000 {
+			compatible = "qcom,glymur-dwc3", "qcom,snps-dwc3";
+			reg = <0x0 0x0a800000 0x0 0xfc100>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_SEC_AXI_CLK>,
+				 <&gcc GCC_USB30_SEC_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_SEC_AXI_CLK>,
+				 <&gcc GCC_USB30_SEC_SLEEP_CLK>,
+				 <&gcc GCC_USB30_SEC_MOCK_UTMI_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_AHB_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_SOUTH_AHB_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi",
+				      "noc_aggr_north",
+				      "noc_aggr_south";
+
+			interrupts-extended = <&intc GIC_SPI 875 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 369 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 88 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 87 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 76 IRQ_TYPE_EDGE_BOTH>;
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "ss_phy_irq";
+
+			resets = <&gcc GCC_USB30_SEC_BCR>;
+			power-domains = <&gcc GCC_USB30_SEC_GDSC>;
+
+			iommus = <&apps_smmu 0x1460 0x0>;
+
+			phys = <&usb_1_hsphy>,
+			       <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
+			phy-names = "usb2-phy",
+				    "usb3-phy";
+
+			snps,hird-threshold = /bits/ 8 <0x0>;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,is-utmi-l1-suspend;
+			snps,usb3_lpm_capable;
+			snps,has-lpm-erratum;
+			tx-fifo-resize;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_dwc3_hs: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_dwc3_ss: endpoint {
+						remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;
+					};
+				};
+			};
+		};
+
+		usb_2: usb@a000000 {
+			compatible = "qcom,glymur-dwc3", "qcom,snps-dwc3";
+			reg = <0x0 0x0a000000 0x0 0xfc100>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_TERT_AXI_CLK>,
+				 <&gcc GCC_USB30_TERT_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_TERT_AXI_CLK>,
+				 <&gcc GCC_USB30_TERT_SLEEP_CLK>,
+				 <&gcc GCC_USB30_TERT_MOCK_UTMI_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_AHB_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_SOUTH_AHB_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi",
+				      "noc_aggr_north",
+				      "noc_aggr_south";
+
+			interrupts-extended = <&intc GIC_SPI 871 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 370 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 89 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 81 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 75 IRQ_TYPE_EDGE_BOTH>;
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "ss_phy_irq";
+
+			resets = <&gcc GCC_USB30_TERT_BCR>;
+			power-domains = <&gcc GCC_USB30_TERT_GDSC>;
+
+			iommus = <&apps_smmu 0x420 0x0>;
+
+			phys = <&usb_2_hsphy>,
+			       <&usb_2_qmpphy QMP_USB43DP_USB3_PHY>;
+			phy-names = "usb2-phy",
+				    "usb3-phy";
+
+			snps,hird-threshold = /bits/ 8 <0x0>;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,is-utmi-l1-suspend;
+			snps,usb3_lpm_capable;
+			snps,has-lpm-erratum;
+			tx-fifo-resize;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_2_dwc3_hs: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_2_dwc3_ss: endpoint {
+						remote-endpoint = <&usb_2_qmpphy_usb_ss_in>;
+					};
+				};
+			};
+		};
+
+		usb_hs: usb@a2f8800 {
+			compatible = "qcom,glymur-dwc3", "qcom,snps-dwc3";
+			reg = <0x0 0x0a200000 0x0 0xfc100>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB2_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB20_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB2_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB20_SLEEP_CLK>,
+				 <&gcc GCC_USB20_MOCK_UTMI_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_AHB_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_SOUTH_AHB_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi",
+				      "noc_aggr_north",
+				      "noc_aggr_south";
+
+			assigned-clocks = <&gcc GCC_USB20_MOCK_UTMI_CLK>,
+					  <&gcc GCC_USB20_MASTER_CLK>;
+			assigned-clock-rates = <19200000>, <200000000>;
+
+			interrupts-extended = <&intc GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 92 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 57 IRQ_TYPE_EDGE_BOTH>,
+					      <&intc GIC_SPI 239 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "hs_phy_irq";
+
+			resets = <&gcc GCC_USB20_PRIM_BCR>;
+
+			power-domains = <&gcc GCC_USB20_PRIM_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			iommus = <&apps_smmu 0x0ce0 0x0>;
+
+			interconnects = <&aggre3_noc MASTER_USB2 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_USB2 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "usb-ddr",
+					     "apps-usb";
+
+			phys = <&usb_hs_phy>;
+			phy-names = "usb2-phy";
+
+			snps,hird-threshold = /bits/ 8 <0x0>;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,is-utmi-l1-suspend;
+			snps,usb3_lpm_capable;
+			snps,has-lpm-erratum;
+			tx-fifo-resize;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+
+			dr_mode = "host";
+
+			maximum-speed = "high-speed";
+
+			status = "disabled";
+		};
+
+		usb_mp: usb@a400000 {
+			compatible = "qcom,glymur-dwc3-mp", "qcom,snps-dwc3";
+			reg = <0x0 0x0a400000 0x0 0xfc100>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_MP_AXI_CLK>,
+				 <&gcc GCC_USB30_MP_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_MP_AXI_CLK>,
+				 <&gcc GCC_USB30_MP_SLEEP_CLK>,
+				 <&gcc GCC_USB30_MP_MOCK_UTMI_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_AHB_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_SOUTH_AHB_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi",
+				      "noc_aggr_north",
+				      "noc_aggr_south";
+
+			interrupts-extended = <&intc GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 345 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 346 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 12 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 11 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 14 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 13 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 78 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 77 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "dwc_usb3",
+					  "pwr_event_1",
+					  "pwr_event_2",
+					  "hs_phy_1",
+					  "hs_phy_2",
+					  "dp_hs_phy_1",
+					  "dm_hs_phy_1",
+					  "dp_hs_phy_2",
+					  "dm_hs_phy_2",
+					  "ss_phy_1",
+					  "ss_phy_2";
+
+			resets = <&gcc GCC_USB30_MP_BCR>;
+			power-domains = <&gcc GCC_USB30_MP_GDSC>;
+
+			iommus = <&apps_smmu 0xda0 0x0>;
+
+			phys = <&usb_mp_hsphy0>,
+			       <&usb_mp_qmpphy0>,
+			       <&usb_mp_hsphy1>,
+			       <&usb_mp_qmpphy1>;
+			phy-names = "usb2-0",
+				    "usb3-0",
+				    "usb2-1",
+				    "usb3-1";
+
+			snps,hird-threshold = /bits/ 8 <0x0>;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,is-utmi-l1-suspend;
+			snps,usb3_lpm_capable;
+			snps,has-lpm-erratum;
+			tx-fifo-resize;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+
+			dr_mode = "host";
+
+			status = "disabled";
+		};
+
+
 		dispcc: clock-controller@af00000 {
 			compatible = "qcom,glymur-dispcc";
 			reg = <0x0 0x0af00000 0x0 0x20000>;

-- 
2.48.1


