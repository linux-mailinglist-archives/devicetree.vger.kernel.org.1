Return-Path: <devicetree+bounces-316493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mT8bEkpnQWpapgkAu9opvQ
	(envelope-from <devicetree+bounces-316493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 20:26:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDDB6D4A5F
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 20:26:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=XJWDZsXy;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=WuawowDu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316493-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316493-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3BEAF3023325
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 18:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26E5D30D3F5;
	Sun, 28 Jun 2026 18:25:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68FE30569D
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 18:25:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782671117; cv=none; b=qBfr7uxp7riOAebzcEt3t4AHnrRn4ItDRlzeKEnpamMSYxmHXEQUc3CK9M/Zp4DyZSv1N3azg0ttyPI47rbXPlI2ZOn4E2bdbNErJMstxPkuYb0xRgoGcRd8mOFgS53mZE+0BaZoXdpYZszMsAEFvlx2wCCpz7PdxUF2MpjO/Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782671117; c=relaxed/simple;
	bh=KgYLpkZfduXu4dhhkJ2rhW/+ZAUERBm4D1wAyZP/jjs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GNCpN/aTjF2R0TPMXYJhPWC46WwXzkzx71J70ulrqRD+FWS+CudGLppQOLWIjGeTlY/uPyOQHDXl5hbPEMlsbg6UvrbftY4mWwMgOPSTSffR3ob+vxpoYkO5xRXdCRp4gnOtPImP6J8OtsWac6OUVSxSDjHJX/vUHoE39413dGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XJWDZsXy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WuawowDu; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65SHis90439983
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 18:25:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WEEd6pGIHJ7HSv0pntu9QVw4caHLnNnK53uxzqrs9Zg=; b=XJWDZsXyybmXtixy
	TD9TZjhNYlVwupMIKDj9ccUekygjgyb2NuRhpgPoLs8FQ8nh4FrmHFtjJK8OfCUE
	TzJ490W5r6MMnxRQghIRMtQs7mRwzHxQ8cqe+cZdT7VclxE1rMDa14L8OfdKtIK3
	q5jqmu2p6FmzKE2kU+FLalq7ysbj6Oh65RiGwAqmd2Vm4iUTo5Jyou6E880qZ2OW
	bInH4OR3letKay8hMZQRrISDVRFDG4kk+fwOdLZBf4rqjzz7yM+GzCKuZlRnLr9r
	OakVsTWVs2/f3s9172k/w8xzPP4nNeh370kQOvYHyE+9lBMPY864HRQ9IA7QKWpK
	PO5nJA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f270a3edb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 18:25:15 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-30c17f62afdso2354624eec.0
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 11:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782671115; x=1783275915; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WEEd6pGIHJ7HSv0pntu9QVw4caHLnNnK53uxzqrs9Zg=;
        b=WuawowDu8wYpxvOlXWpbFioBm+f/X8tfjy6jTp19NAlEz1yyXmwsF/LxCzUL/jeGon
         8xqOMjrMveiqDkKr9LUYbgR/WZ6RAl/5zpcP758++Bze7VnD6JQ2oG/maDVIQn9Z+PRl
         Uoy9qxfyYiS7qu4v81okYkKAAQP0AAoTY4ZEziJjYRbwYe8O2eZto4vHQSk1MwXMvsfs
         /S/m7RwNOzA8qAfiwzhSmmhRlAJ4pCf8N6IO1GEvxxfIEZcRoxPWvg/INyUjWYa7mHlk
         vR68IlXOwTF0jxutqPcfcBXfzEWthylgd9SfKh0/deAZ1uf8vDZkN57wWdUgilCPOBwy
         7Caw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782671115; x=1783275915;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WEEd6pGIHJ7HSv0pntu9QVw4caHLnNnK53uxzqrs9Zg=;
        b=YZBMkIIkFadHuJ8/k0W9vXx7saHG/VlEvANVuLq1VGw9HHETsTmVnSlYTGEIv78ZGa
         B34GOTZV3o3fbYHOO5q7/B9GxOxPMIipL9jbkIV4f6ZBULaKLUdBIPuLlNnsNjNm4tnq
         dH5SXKKiFN7ztXyUq6Yqlbu1vcd3kqnN6bWGzbf9Xs9zxcKYmL4s0/bnkG04UdWhs4f5
         KxbbbH4rPAl9P2EqSevGTIN39LBcPQ/KLzc9lt2FWqvzYsZKU6Sh0ncvDgIeYIe0mkmP
         1mSvexJi+HHKIMXehmT7t1w7+Th36HrJVt1zDg/tbJ0+NNb+smn9JxLtvooJz5dp1ytR
         iItA==
X-Forwarded-Encrypted: i=1; AHgh+Rp0lEpy2+0vxh5GpE3ZrRYF5tt2nNsAujUIjO5LqQ/lw9abhf1iscG2nz2R5ci7EPbSnVFb7qHhlIY4@vger.kernel.org
X-Gm-Message-State: AOJu0YxhRQu7NIsX+ERYR+lbLKR7ca5iHKJkPYLxpYYhWMXl53EhGti6
	zXb1GwmolrH7p23gm5RTuHybY5f2aZW8+8K0tuwmmNQS1MIiXJWDvZaNqOcTlRtx71oBS7XXuCM
	gZFWAY/7SSlfbky0t3Rf5vy4zLWcSorVfY14i95G4cqf4gXh8338vGBPbmcUot0rf
X-Gm-Gg: AfdE7cnSiZdLuRVdi3YnXq151VHCdNFXljv5laNi4AlWlXC1ItsfXAY50b+aq/f0BRI
	nn6sSN/hZcjP6ed4mv98UpJ+pgTctotqTgbEXWu+Ljv82jJC7mnbee8SfAu5CUtnME8TqonYWZz
	o0f9yLqoKDzdyUF0GubnOEYGb6SqBt18rmI9yXFvYE2V/Qw+HqXHc3RQbk/v3e4ysHb9oiu7G39
	IBRoRhYBfZSUwCwRbpbMatA2ZZ3x8OfMnkUTvkhPT/fIwGejizsB9Qb5G1Sp0kOvShnahDD8zyf
	AukDxbgZkSYJ/2xm2DDEtWxL0juc4GmtirabhAfE0LUEtz234err9nDcOzaeeqMIDAXWqjSD1nz
	j8Til/Wz/JK5jjnd74CwXamhQvOYskS4ho+c=
X-Received: by 2002:a05:693c:60c3:b0:30c:d03d:ccd9 with SMTP id 5a478bee46e88-30cd04d0fc1mr4515717eec.7.1782671114444;
        Sun, 28 Jun 2026 11:25:14 -0700 (PDT)
X-Received: by 2002:a05:693c:60c3:b0:30c:d03d:ccd9 with SMTP id 5a478bee46e88-30cd04d0fc1mr4515687eec.7.1782671113915;
        Sun, 28 Jun 2026 11:25:13 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c7c8b1a75sm37508218eec.19.2026.06.28.11.25.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 11:25:13 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Sun, 28 Jun 2026 23:53:59 +0530
Subject: [PATCH v3 6/8] arm64: dts: qcom: shikra-cqm-evk: Enable A704 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260628-shikra-gpu-v3-6-9b28a3b167e1@oss.qualcomm.com>
References: <20260628-shikra-gpu-v3-0-9b28a3b167e1@oss.qualcomm.com>
In-Reply-To: <20260628-shikra-gpu-v3-0-9b28a3b167e1@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Bibek Kumar Patro <bibek.patro@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Aditya Sherawat <asherawa@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782671052; l=803;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=uABArrmcbp7tI6+l6+GOP05oGpD2TXxtwDJgJbxPJ2c=;
 b=zu51LUxAMig1yDaYoqIMlPTJ3nAgm4JPkQdk45v4XIneHJFJdXsdBfMbW7Ec9GipESIbRsT1m
 E9agdOA8VanBZThtAfeTyOxBDPVcGJgnX+VmRW9w2JALr6auGuyEtDg
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI4MDE2NSBTYWx0ZWRfX6o11ZlOQoZ68
 xwJcz3AIg+EWp5LSSNnJ6raqHWlmavpozI+6Z9qDkVIhtDwjRmXoFXneX52cIJgPaJ26SIi0lbv
 ZN7MRlk52kw9cM/taYv3CiraOgw6LUQgoj7UqiwALecwcdk5Wgwn7HzrD7RUKzrMEzKV0GcUEws
 /XfoipLNyWdgAQKse/lISlcLrN1Yas36FSyzDqpbANH0ZT72votVoTJLJhLi/MN0FlB6xorwlr1
 wFy+voFgy/GOfcQV5b/3x4gCavmt4mEUt7dQygd4H2O9g1L0yWX+ALUMG2TlVwqY3Azh2QnQqkB
 0AoFp+72Rp9byWDaMUpmHrzDpnt4euhzgoxwIXo5gU8rLlDvjnMbmXS4SnM0xDDWMpBHJTtTWMb
 uPqTSqnI0HhRD0NAEpu81xD9Ywgd9cQBJOTdkeAcfDOq+C/RwpLoqACER8JZ24UVgGCwp5/To+L
 usHVEU02B9zgiMRYFDA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI4MDE2NSBTYWx0ZWRfX/7Jd3qzlXJJq
 H5Mk5LKxLyjyFNAjXt6ZLJNd15QCBocGKdu3VlCeN3sidCGoXHYMVjY5zrpBJu74tXKPlz1pr3/
 i7AyMCaEyuTeZLNWDYWzrKfzs5Bi9xs=
X-Proofpoint-GUID: diS_sv3J_QVOeLDxscSzxPmV4e56fE_k
X-Proofpoint-ORIG-GUID: diS_sv3J_QVOeLDxscSzxPmV4e56fE_k
X-Authority-Analysis: v=2.4 cv=Fe4HAp+6 c=1 sm=1 tr=0 ts=6a41670b cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=Xl3f10jGzgz6Ja07nhwA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-28_05,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606280165
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-316493-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,poorly.run,kernel.org,linux.dev,gmail.com,somainline.org,ffwll.ch,linux.intel.com,suse.de,arm.com,8bytes.org];
	FORGED_RECIPIENTS(0.00)[m:robin.clark@oss.qualcomm.com,m:sean@poorly.run,m:konradybcio@kernel.org,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:marijn.suijten@somainline.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:will@kernel.org,m:robin.murphy@arm.com,m:joro@8bytes.org,m:andersson@kernel.org,m:bibek.patro@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:freedreno@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:akhilpo@oss.qualcomm.com,m:asherawa@qti.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EEDDB6D4A5F

From: Aditya Sherawat <asherawa@qti.qualcomm.com>

Enable the A704 GPU and configure its zap-shader firmware on the
Shikra CQM EVK board.

Signed-off-by: Aditya Sherawat <asherawa@qti.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
index 0a52ab9b7a4c..d46132e97c69 100644
--- a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
+++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
@@ -23,6 +23,14 @@ chosen {
 	};
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/shikra/a704_zap.mbn";
+};
+
 &sdhc_1 {
 	vmmc-supply = <&pm4125_l20>;
 	vqmmc-supply = <&pm4125_l14>;

-- 
2.51.0


