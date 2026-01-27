Return-Path: <devicetree+bounces-259777-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PY8KBl/eGmcqQEAu9opvQ
	(envelope-from <devicetree+bounces-259777-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:02:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D50D8916B1
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:02:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BD453300B47C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67544332918;
	Tue, 27 Jan 2026 09:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VzyF7xrI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ellh6pu7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE603321CD
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769504515; cv=none; b=LeDqOqTT080grSE5h/zyWMSNclBS+1tK8EcZrDcfqgKbdcve+DgEbxy6TSmm1FM6X93nK2skgsPj2SBvim2C7TgVn12odl0Rl2rMD/G/jveEMs8nimwL59WjzeUInB03SmBrHD2z/QTof9UCyXGzJSgKhn+eKG2YrLU3VGY33wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769504515; c=relaxed/simple;
	bh=kNS3mRzR9euxc1dfj5q3SILvs7z0UTa/J18sZOeIlA0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NV5XFbP/iGju3Ub2/HfWBPQgMeQr7qosRCbG6nWpX+tmbREnVvnEaDiwQ+96INWb8WPhYq21j+ghZ+uet+ilEnOfM9cl8648bOPIjZcSyechNm63zGqgsWeWdbDGxFvOc8fWYUbdkIV5CmDfzaZEeEJ0Ng/j61cthK3al/sL5fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VzyF7xrI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ellh6pu7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R4UDMA3714705
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:01:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=zO8uh2P7KePpposrMGLditDRhEDDneSWvz3
	+8lT2xWk=; b=VzyF7xrIJN2WxAbxMg1Bfhdh2gKYRzp4N9rdzgQUiQLM8SNUV99
	Pr0lwNvS42LjRhLeWYL9pUpjr6E/puydLZqm+VrcJrL9SxPeI/I8rXyNMsF24VPf
	4Uaid2IeUgx52d76kk/yL6Uld7+4X2eaG0KqGLnStSRtDbCPnuQouumFgbcNIBnZ
	wSHHHm85o1c3OulfbTcsVBoMicUAy8utGZEHGvVtyYeWZs/d/54cjc+Y3HoIgG8D
	G8jaPZJL2UVD73wNzndirp+QvyDdizwp0WOk8Vw+5c11q02VVWlhV2Y51i5s17uw
	NvbuYNCSiEvYwZX2exGRl5d3MTLWnZA3Tmw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv0aas7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:01:46 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-82343404fa0so1177922b3a.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 01:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769504505; x=1770109305; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zO8uh2P7KePpposrMGLditDRhEDDneSWvz3+8lT2xWk=;
        b=Ellh6pu7MlrR/ou899M36HWzXpUVJVoYuB46/HQnVELXFAZvgrByqfZ8lYn3bQ9PBP
         DfRWh5Lt5Ds3Hslt1AxOrXMa6TKYGEj6FZsBHm8SqiqLuMn7UtaT1yTiQ7pzYw362R4y
         /5Ygk0rMCowwHNoXROpqYIfOP+LwBX7YzqTcVRfttdsKpXpsnFAJ1g4mMvqn4kNft1LE
         4pxo+1X/4/Y6darDNLn7PsaecswRLeu/I5Iwn1Sn5CdXmd6cKloccRvP8AWJVxsBY+1Q
         OzIS6ohfEvCFlo9mL1DCoHvd+MAuoqmspmOOdbQlY0+9Rp2f8aVt3eI2JV85TsQimdu3
         cu2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769504505; x=1770109305;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zO8uh2P7KePpposrMGLditDRhEDDneSWvz3+8lT2xWk=;
        b=QZt9qsM3BT4d6VqzHt261kh6KsthUh1DMDoysc8nPIUEwrnHHY4JuuQSinZMkNOuID
         IeImPW7T9rAMz4uvoXGmiBvjhAOTy7hIrbtbgZDWKbYb8n2ZHMY1bJGZi2oQ8lLn6m/X
         j0RetakiHS2QM5k6ICYmrt1Ua68/KLZx/S9uBgtEluxVrG/4GDWZj+rJr8dZIWFB84vh
         IzWPFHimpj+bQZrpKYW/g7QHiMAKu+ak7+eHAuXslY+pNjzQQ+6t39iuLpjiDk03lN7O
         IDnxDWVNcsnchN8XiRUEtpw1AyBwN1pYrVt3DCl3Zz/eH1SXtXxnUUJlJMY1C+gpeHi4
         YZ/A==
X-Forwarded-Encrypted: i=1; AJvYcCW5VyJcbda9WwrgIzcGn/cdGMZ6A8Au8DQqDF6lb1IAauCwTjCG8FkkMNNu2DSTEDT5eLs+yYk2oar1@vger.kernel.org
X-Gm-Message-State: AOJu0YwvvfMGSHWFtqICILx6zDGstZpYxW+m2swC4rSbmrIZIIXh61KW
	jruu6Q+jvY4qEFURkdZrWpJY6fHyfyYGPY8t914a9iDS3U2xqea2KiLjtXipP6IA4OA+yAxyR8S
	M8bo6Xye+zPNVmvViZV39fNZiz1VqGjqSTQE/d3CVUp+60fneBuUE6Hzsu2u3udqe
X-Gm-Gg: AZuq6aLYW1E8WXohQzr8R08qMHD4rw+E35RV0DBn3pRh03h81JCaOi9oEEitX/WPBj7
	ylg1xZllBXPzLUCeRwsxAP8B48vDqyKHTftQCtt8WePB6XZJ4x+EpKDuduNo4IOm8jdt+r0Z3DL
	AFPm6fB57yl0yfc1voh5ltASCKoS3Siftkphev+kspxdWWpUfzpACxaKGnuX2ETfUDN4hh78ac7
	KAC2Hnoagl7PTzp3lu4kQ4PBCxSTxgxdFrJQWbAmjh6AlnuTOHz5AuBaFaXUYxGbSI9tTPkBCyb
	yJm4QKEuxPfxoDEN9S2XoW3lj2APH379a9HD/w+1+Yhk5pT50J+VlXVW5YzSJ77a7Lzxh6PuZ72
	qdTDKnU2UgB/6RgZO/AclKbct/LgvfJmIU1lGSYak0+I=
X-Received: by 2002:a05:6a00:8d94:b0:823:244f:1f91 with SMTP id d2e1a72fcca58-8236916b19fmr1019878b3a.11.1769504505467;
        Tue, 27 Jan 2026 01:01:45 -0800 (PST)
X-Received: by 2002:a05:6a00:8d94:b0:823:244f:1f91 with SMTP id d2e1a72fcca58-8236916b19fmr1019859b3a.11.1769504504856;
        Tue, 27 Jan 2026 01:01:44 -0800 (PST)
Received: from hu-okukatla-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231873bf53sm11579228b3a.45.2026.01.27.01.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 01:01:44 -0800 (PST)
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: [PATCH v2 0/3] Enable QoS configuration on QCS8300
Date: Tue, 27 Jan 2026 14:31:13 +0530
Message-ID: <20260127090116.1438780-1-odelu.kukatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 8JbGF9jNhIF5UXxodXs35TrKk81prGYQ
X-Authority-Analysis: v=2.4 cv=SvedKfO0 c=1 sm=1 tr=0 ts=69787efa cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=zE-JDaMYF2uaPRVanG4A:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: 8JbGF9jNhIF5UXxodXs35TrKk81prGYQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA3MyBTYWx0ZWRfX8zMegRmGR+2C
 4kyULVPadMFVrcz93ED3YzAtmjH2SxZ3g9KGxB42rSp3p8R6qmPE0ZMhtzk6TVbmaIupCojpwuQ
 d0O/TK93KIol8Qdc6M8ZjNJSBQxKMz7lTlCfpOhwDYiwGZu6awEnBYaFK1KqmleLmefGw9DBfg5
 Hb6ALhX9NQDi1TChx+mLb/SaFzzXuSfUQPs1k2oD2G9tBQX3YEuGSFXGe04YFyWA6xapHxgd15P
 oqmybpALDkgPRRq01noqKIf5W0LAEsQv6Labtg8ApE1pRNzour06TZbbqF1m6oU+Emi6RSbLaI3
 FIrAHXnj7+5jDfXrjTVGIAJtFZ7GwFE6tFLHPYgPmm4wOgQByFoVzJ1Pwzd+K2M4vjCOCjYwHkc
 Kt0dwOvYQiU8ZnmNdYmOmkrdJck/wzmSPDAz9pKUBRIqleYS3on1GAtml45OO4tn1LWhm5F0Ms0
 AlPvRFIfgSb6B/88SjQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270073
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259777-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MAILSPIKE_FAIL(0.00)[104.64.211.4:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_NEQ_ENVFROM(0.00)[odelu.kukatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D50D8916B1
X-Rspamd-Action: no action

This series enables QoS configuration for QNOC type device which
can be found on QCS8300 platform. It enables QoS configuration
for master ports with predefined priority and urgency forwarding.
This helps in prioritizing the traffic originating from different
interconnect masters at NOC (Network On Chip). 
The system may function normally without this feature. However,
enabling QoS helps optimize latency and bandwidth across subsystems
like CPU, GPU, and multimedia engines, which becomes important in
high-throughput scenarios. This is a feature aimed at performance
enhancement to improve system performance under concurrent workloads.

Changes in v2:
 - Updated the binding so that the `clocks` property accurately
   reflects the hardware and does not allow describing non-existing
   hardware (same approach as followed on sa8775p)
 - Corrected patch subject to follow dt-bindings prefix conventions
 - Reworked commit message and binding text to drop "optional" wording
   and perfomance related description
 - Dropped the redundant additional example in bindings

Odelu Kukatla (3):
  dt-bindings: interconnect: qcom,qcs8300-rpmh: add clocks property to
    enable QoS
  interconnect: qcom: qcs8300: enable QoS configuration
  arm64: dts: qcom: qcs8300: Add clocks for QoS configuration

 .../interconnect/qcom,qcs8300-rpmh.yaml       |  63 +++
 arch/arm64/boot/dts/qcom/monaco.dtsi          |   6 +
 drivers/interconnect/qcom/qcs8300.c           | 375 ++++++++++++++++++
 3 files changed, 444 insertions(+)

-- 
2.43.0


