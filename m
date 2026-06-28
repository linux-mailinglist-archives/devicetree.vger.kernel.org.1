Return-Path: <devicetree+bounces-316489-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mCk8MfNmQWodpgkAu9opvQ
	(envelope-from <devicetree+bounces-316489-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 20:24:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5DE6D49E5
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 20:24:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=AtoMHTsG;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=h21TGn7M;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316489-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316489-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B7C90300B757
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 18:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FE7430BF5C;
	Sun, 28 Jun 2026 18:24:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E184230569D
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 18:24:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782671083; cv=none; b=YGIktl4Vgi3urhCCBXV43h8nkVwISxZIRt3MD3PXEjjBY+F6D3IBE3wJRyui8Wnp7ewcJ2KxQnoHoPqcarVT5e48f+I9hN0i1+Q1FZ0dJSjqCaxY8Bc7ywDLYJNgARUYffWzpt4auMV162epVUMCLcRBLriQE7+/ELz68OhmcUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782671083; c=relaxed/simple;
	bh=PqBOkMlKBD9SPkXLSG+SxQ4C+QJ2OeUPUwMzbiApxz0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WYudU63bzlYlmpdHoO1EHKwhsutAx7NfeFNu9en4yfeSEnVRy2bAVAK8ukJUvQL4KOMMLfu9vKDRPaz6CmvTeFa7hOG2TIg0hRnUna+C2XQXtk4ekbyCnMP31jN0wC86L5p9+gu7Xke9CsOA5Ihpc8fAYc1Mx2u6wVwcJyF7muI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AtoMHTsG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h21TGn7M; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65SHisiF449009
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 18:24:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+gh29NgtToLExo4FWXGHYjdoYSLAME9bGv9CYiniEKo=; b=AtoMHTsGd4iaZpmE
	HlcRrS8Fm3n6rjsVRFw1cpmHhlqUA1Ryga0NblfhcIGWPstxJd1/46MZKhpl+DKf
	x8p2WKigW0tgWbf5u2U1sbqeNcbYaqCqZma+EA9rRsOHRy6G/MbNMElGD9Ipye5O
	r6B80xwMQvXeg3hwGp89NpxuA3WkNOmfM01LwaajwRWbFa6beqI+dpgdl8c8a1FO
	Z3Bns/RP4x/h9m7+CR0l1pg5OfobXfrP8yNfycl6o8IjriDXIy+lpj8/1lEFaD1R
	XofeE38AyJF6/Hcmw7TyOUO59c19YaE1psOISv8vsZGxdXjcOkDQTmFtm0arbWt1
	pldu0A==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f26tukcf9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 18:24:41 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30bccca5620so3792545eec.1
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 11:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782671081; x=1783275881; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+gh29NgtToLExo4FWXGHYjdoYSLAME9bGv9CYiniEKo=;
        b=h21TGn7M66mS9+VkyE0iVOtAdmMdHD9kIrH1LW9IibKpq3awp66y5Nun6RoLg5i4uw
         rFs47GycyrXzyAgkzFnDCt8JWx9vQH13AvhZ/T92EePmU1nXwWn5W194q/39nkSN9U9a
         D5kssxlwEhfHe+I7O+0zpiep8PHOmCGJkpCXrxuSHs21A5ifufTHaV5yOxIbq17nit+7
         6W7rx75+wkpnV4SSrhkozu61DTRV3ydZg+BIRUwPFiXiy/+N4bc6iqN3m4Y4kOLm3U17
         EbvuSJn/o97f19lx4iTdLVuTL7r3iOnZZ19MRa6XfCV8vE5FsdM5O4KMpTRGoE6vjS9g
         LOdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782671081; x=1783275881;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+gh29NgtToLExo4FWXGHYjdoYSLAME9bGv9CYiniEKo=;
        b=blBheACqyrjTFlvMC6VKZgQUZ0fMDX1zby0s5IwVCABtDqG8dcHz3rAEUsNgT55+HW
         52hY4ZDbFrFDsplXb6zcLAilwh2zjdkxPze2eEATqNNSbOi21YIDaY+2S2mExGHiYnVi
         Tfn/A+I0afcFZDgydcwbyUD1MnebyakR2EOTTa+ks4GDD5aGz4bV+8/nh02rCKf4uNNw
         /sjDbRH1zbu9uVa0YvMln0FYJhUyLCfypJCvKM1KjE3oHVHgYNc8ON/eZ79AXvUNlMRq
         HjQKPfILmFDm87udh7JJSlo/4aD6JE4MzvMkh+n69IkNqBNCcEoLTETIFPUfKVIKUr7s
         gIiA==
X-Forwarded-Encrypted: i=1; AHgh+Rpcm2YqnzFn8LNcNFUEZ4ZsDYFbYcbt+gi9sXVCfD6VYFC/YgApSF1sM4PIxSPEWTJVN24jEhtR3vyY@vger.kernel.org
X-Gm-Message-State: AOJu0YwWFh4YlC5pfC0DkEp/rqnJnbY4WDWKigHF0OsUyKDYubc+HGzx
	huLIOVuiAMsm/mtJuxqgkUE3qha9kMaYBIKO9dkC9wIPsxohT66C7yWUdGc970iuedRqCVVV8xl
	lAfCVVvFX/f08ghg/uQ4LHCRpskwU5vEMUlnxrdDHhwDIYvpB/pYqervbad1bC0n+
X-Gm-Gg: AfdE7ck7ZAxKF3G0KOomJdy7+PZddxLMh2iVvVQeFrerzwNLqA4dGYT2L9ZvqFb6+jX
	WBAuL7iYANN1/ihPmRnMmIRmkd1hDiJEOn+6Itd/f0TKmIagXho+s4DEC4xpCrjScVZ5XxpBjcl
	nFPo9BWprrko0LcTxJZ0VSlFuJIPczwYPhTND74NECtRsZiN5DscWjXMGN52gNszauP9qqUihcg
	sQf0VHhLb2gwaB13kRpc7zUGq7ywRrB0MkgasQcq6gE//MGyWmM83DEifJIRarr40zCyLBO0NEI
	BPfGePUl62MvF5eTby48RRka3pET8m3kJNCuj3OFJgBsDn4YCIeN4emb3IhD3EeKaxou2sBOhGZ
	t4YqX9WTUQ+/GxKO9uiuHjnVI4CNjggt3xNs=
X-Received: by 2002:a05:7300:ad24:b0:30e:cb91:659d with SMTP id 5a478bee46e88-30ecb916ac9mr771738eec.22.1782671080081;
        Sun, 28 Jun 2026 11:24:40 -0700 (PDT)
X-Received: by 2002:a05:7300:ad24:b0:30e:cb91:659d with SMTP id 5a478bee46e88-30ecb916ac9mr771720eec.22.1782671079570;
        Sun, 28 Jun 2026 11:24:39 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c7c8b1a75sm37508218eec.19.2026.06.28.11.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 11:24:39 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Sun, 28 Jun 2026 23:53:55 +0530
Subject: [PATCH v3 2/8] drm/msm/adreno: Add support for A704 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260628-shikra-gpu-v3-2-9b28a3b167e1@oss.qualcomm.com>
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
        Aditya Sherawat <asherawa@qti.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782671052; l=1210;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=ondYi/J4omUToWNmj2nWqhqOf0wePhpZeJylLHwGXfY=;
 b=OaXvuIBH77BLABfsoVUiK2SLQPCijRGfyZFTJz+EP3d0PLXtC5KchOfPnFq6mXlqMb9xG8H0l
 xRhibSzgX5bBOSyhyra8+uMdkhad7ffYZ+5n3w/9rcsw4uJq3KId5uZ
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: Cd3Ar9tFI2YbJ8EyhOG8qIlhMvzmq7xj
X-Authority-Analysis: v=2.4 cv=A8Rc+aWG c=1 sm=1 tr=0 ts=6a4166e9 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=XFVbiEAxaSnpWCc0n_YA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: Cd3Ar9tFI2YbJ8EyhOG8qIlhMvzmq7xj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI4MDE2NSBTYWx0ZWRfX8xz3oO6zRBQe
 nTBCZ0VDN0a6/8PA47wpOCgO9QpMCzJzvS0YF6Qfuni1mCZNjrYXqoX63EHibczxPmfu2yJ1n1V
 5PgpYhSV4Nu3dKsPOIjfjTn1Is11W20KkPVssPO3V9vgOX3rItipErg+RU2/peDrALtHNH1Y6ZK
 4VRvM1HWYOOl+xlMqTMUluk/9HjhInn82Gx3egDiqkwUue/fK+m3/jzV7h62SK10vRNR8ytHkE0
 /kqsZP6pgrhdQvaH76UoqeOJBV0WE+/hRzLZGLwU2SESF/U6538Z3P0sNEG3DSHVMDNhBAskAwx
 NT6KryWSXhh8Cwqfo6YVY4UYZewTP6Q6l5Y8E1OgF51emf06/Jk1NWPPusN65vLkarCtiQyCFBo
 25Gravum7E5p5+lmk8qEib4TkR2VMLPYlSygK4RmpYzvDsVyn1esJ1ki/WYsN7hYbR1p84p/Vwn
 5BWsQhhABXGdw/xeo+A==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI4MDE2NSBTYWx0ZWRfX9uwLWd+4/LLn
 13uysKyrvHh7KfnJX6QLUN9WmYOBoULqxSeL+T2UljFKAv2D1yE9PG1qf2/RObMg1WMZH9uv39g
 lFj3PS2aAhXAa2azwyqLRCiHWQaH6Wo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-28_05,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606280165
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-316489-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,poorly.run,kernel.org,linux.dev,gmail.com,somainline.org,ffwll.ch,linux.intel.com,suse.de,arm.com,8bytes.org];
	FORGED_RECIPIENTS(0.00)[m:robin.clark@oss.qualcomm.com,m:sean@poorly.run,m:konradybcio@kernel.org,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:marijn.suijten@somainline.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:will@kernel.org,m:robin.murphy@arm.com,m:joro@8bytes.org,m:andersson@kernel.org,m:bibek.patro@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:freedreno@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:akhilpo@oss.qualcomm.com,m:asherawa@qti.qualcomm.com,m:konrad.dybcio@oss.qualcomm.com,m:dmitry.baryshkov@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: 4D5DE6D49E5

From: Aditya Sherawat <asherawa@qti.qualcomm.com>

Adreno A704 GPU found in Shikra is an IP reuse of A702 GPU with very
minimal changes. The only KMD facing difference is the chipid and the
zap firmware which is specified via devicetree.

Just add the new chipid to enable support for A704 GPU in Shikra.

Signed-off-by: Aditya Sherawat <asherawa@qti.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
index 3e6f409d13a2..2de3ab010135 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
@@ -1454,7 +1454,7 @@ DECLARE_ADRENO_REGLIST_PIPE_LIST(a7xx_dyn_pwrup_reglist);
 
 static const struct adreno_info a7xx_gpus[] = {
 	{
-		.chip_ids = ADRENO_CHIP_IDS(0x07000200),
+		.chip_ids = ADRENO_CHIP_IDS(0x07000200, 0x07000400),
 		.family = ADRENO_6XX_GEN1, /* NOT a mistake! */
 		.fw = {
 			[ADRENO_FW_SQE] = "a702_sqe.fw",

-- 
2.51.0


