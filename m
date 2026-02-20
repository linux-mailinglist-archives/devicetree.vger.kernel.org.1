Return-Path: <devicetree+bounces-266805-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Db0kOxr3l2ks+wIAu9opvQ
	(envelope-from <devicetree+bounces-266805-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 06:54:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D59164D2E
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 06:54:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6732F300F5C6
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 05:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6ABC2E6CCB;
	Fri, 20 Feb 2026 05:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kUkYIZju";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L1hYm2yU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D8B1B4138
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 05:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771566871; cv=none; b=HhZpboy4gQIoCyvStOHyBdbxeGMZ6tjX/zlaSufasazOiclZ4nm4SJ9Kbzk1Y0ZUPV6MSJZZAARPqxOXPREOgAdj5u+LendGb1uiwcpPwmHdToE61ArMtQjw/ROkbN4Br/2n0GZKPevm31A1qK1WbY7FPNK5qeuSb7+kOsswvPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771566871; c=relaxed/simple;
	bh=fV5WWPdwufBIXt9mpDliWUdFwg3X3zqkLcIQSSqZUBM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Xg6jk6mR4OVY3SMP4a0gD6izc/YGg05j2WNis9X7j1o1dC+T8UXdvTcq26Jo4LsuW73pYKLXNPgxSfusKEw+HjXPmPpriICZWY1zsWzm0adVA0AG9+6c3AxAot1BrAciOrak3V38iIT4hSR9bF3zN8SlsTYyluSuV2LHhha4DoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kUkYIZju; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L1hYm2yU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5S9kF3337705
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 05:54:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=3dHqnbi3dJpAvR79pUJ1zF
	Mqox5b0Yk4I1PRd7BpHz8=; b=kUkYIZjuTS7euGicBSTSOaVr1eNUpomhxyKmKX
	cM9BisEdp87fIir8VVe2TSCZeur+pIbf7wJaelyyjfjI9PLZlp0oypYaMImy5FdY
	cNCPEfEU2mLqFOKNVQKZaMRqG7nEhyqRwx2uH7YyO1Kw1WA0vmj0F0JNxO1Rice7
	aYjSx9WUbkzrNebEWCEPbBmlnhai40+kPG4nhXjxLhM6q54rdELbzXcN5muDC2LB
	KQEkCn+05UUV+vyvhv2zvoIefO1t1mcc1GGbufWBQvbSKBMtu9mqtUs77XTG6yYz
	w1l9TQEyFB1FQ4WHx5JYjy7pVBs88fy9VtbwsA+po/Nc3toA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedp6gmk5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 05:54:29 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a76f2d7744so18792205ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 21:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771566869; x=1772171669; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3dHqnbi3dJpAvR79pUJ1zFMqox5b0Yk4I1PRd7BpHz8=;
        b=L1hYm2yU6PTIYFzLYaFkFnkZdWddCVwxs5/i2oDuLtlfVot1fGNoti0ExhgDgn/Er9
         4TobzdDjw4QJyThCpccN08+0hU6e6vBuCz6DDZCBsl1zd2sE2x9wlh4aX547dXMpSLh7
         B4W2sh6+7R2UUvW1PUE4XTtGpd9KOdUw1ICRr0m8TIasZkxd1w+KOehPscOIHmu+gO+n
         aotf8UOcP6/2eF4UfiW8gbHIkCUuAxuQl9AWGoFQU2gNFCWZSuy4U4zj70oqjpIazDd9
         KcO4EcC4WGmRFeBCCjixWoMOeDA/JxRbOXthxuMSyJ7J67p9m849jmXHb8IWFa1q4uc0
         zTZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771566869; x=1772171669;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3dHqnbi3dJpAvR79pUJ1zFMqox5b0Yk4I1PRd7BpHz8=;
        b=QxrLXuV05323lk9FbdPl640SSCBjkafDR3PKwp79ns/NsL2ZASLs1K+bwiV8fL4jX+
         8niNteGdb+O/VNPnO5Xvd3iX8m4HEBAcg4OS6crCH+R94mVlAcEXYjI2zdCn9ML0Dk3n
         wBkLRlGul61zGnGq2Apr7OCLtBYMfWhvfb4JFyLSqxA7MaQOj9Gid8JspP2QTwvRepUT
         f860H6jO00AfuxdFlM4zeW9tU1gm8S/FR3DWypvsx4QRYG/gLs/McW+0Bj+k9pW+cXSm
         UPsnRxF9KXpYDR4sxWtnqnwBiaIpzEVethhVl4IwXkPdyD3QxIE8uVKZSUt3aw+FKOfi
         ZBSw==
X-Forwarded-Encrypted: i=1; AJvYcCVzrcX53cwLw/oEZERU9JawjYql9syKSR+xeCOmPF9tbMoaAEWrYEgY30XKoReRPVQWs7FigH7GIWwf@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9nnu55zZdfEmL67SUGZx0gohwJEJAqmNIGDNBsZ5lIsRE8ejF
	FGN8CK+q6lK6+FAJ84VjLk8KuDMGiB75b92NWJMd6EkV1DK98oxvWoXSCbU+loIuTzCTOELnVEL
	D8nZXLgexeCiB05kHG7vyNxOFZmVi1gT6DEr8Z8IweewnXFJfOwwFrMNYEU0I1j27
X-Gm-Gg: AZuq6aLgpdEql/Gp5CG67/87NhwNVvGJ1RaSXSYYcXvxDWTmmFyafF7VXN24mDf2EVx
	I1Fi4N2mdmv276d89UKOULYrnhyNk3J9Rq2HIbo4CZtxCayIvN+mUDzC4YC7DvipWII6b9+hKdA
	TrGOO/+2FM/iUmDAWBOgGObYCRtsv35x4+Ukw2GtcJN4HGpnzwcEYrZRZ8jNqAV67Ab0lurC8s1
	X7oEWfzbHthxy2iKadUV5TfOJdOIJkDwBj/PZlOmZE+AJDuvwg7s0qEcIRTN+5sdnpIMl3fO/IC
	gUVh1qEsdA1+6tRxrrNlYntX7k5iaZPquTUhg6WBO9sy3BZAKz1IRhiaXDFwwKk51kqwUZpZxa9
	Oifncj5Q0idWix0dUUqJWu8Wt6gPnWiOvoJrifXKQr3ImIw==
X-Received: by 2002:a17:902:e74f:b0:29e:9387:f2b9 with SMTP id d9443c01a7336-2ad50ed0db0mr69116075ad.24.1771566869173;
        Thu, 19 Feb 2026 21:54:29 -0800 (PST)
X-Received: by 2002:a17:902:e74f:b0:29e:9387:f2b9 with SMTP id d9443c01a7336-2ad50ed0db0mr69115855ad.24.1771566868553;
        Thu, 19 Feb 2026 21:54:28 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a6fa326sm197949665ad.1.2026.02.19.21.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 21:54:28 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH v3 0/3] Add support for GPUCC and GXCLK for SM8750
Date: Fri, 20 Feb 2026 11:24:19 +0530
Message-Id: <20260220-gpucc_sm8750_v2-v3-0-6c5408564c3c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAv3l2kC/x3MQQqAIBBA0avIrBPMcIyuEiFhU80iE6UIwrsnL
 d/i/xcyJaYMg3gh0c2Zz1DRNQL8PoeNJC/VoJVGpVsrt3h57/LRW6PcrWWPaCyiNeusoFYx0cr
 PfxynUj5DNvRUYQAAAA==
X-Change-ID: 20260217-gpucc_sm8750_v2-866576675fa0
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA0OCBTYWx0ZWRfX/2oCuKsnSbNN
 7B7M0WNS1qDweREU/crFJokUIriJzfWFcn1ukcuqQBvKzEEU6nuO13+Vzxn1I9hCHUUyVWTaKLK
 DNn0Dx70OzCS6E8KOd3jndE/4nU9rG+Uh82BOi6dGSK+5jcOugOcoQ/O6d5Mj+IqusIuDUcEont
 jTE1Hv8ZvZVlLnrEnaAZXjuNfGgovHMHHpuItPDQiJ6+Q9m2iJkKOdnencIjYjbc1MPqdNUmigz
 kHqPFAAyQwC00LIKIUeWuf9DRkWT9Ztx2AVJu3UXYAnhY3wFeF+CFEmtzahTpjH6kR+EkTNkjqa
 v53jPiT91K18CurkA+Lue0SGxag+0jiPy6XoQVzHJOlhglsmcmn6Tw/QjuH5PFQNgFtdjuDahnS
 DfvNcHaQhvUDQYv2YYFrNgjpt6EydINNWCQT0AgIYmiEnPVZGDB5LgEPwgpZKfNWIA95Yo9Sx7j
 yuXtQp07eVeG28fAA1w==
X-Proofpoint-ORIG-GUID: 1ofQkUBk7DabEAV392MmcGn29MRl9jnI
X-Authority-Analysis: v=2.4 cv=Vuouwu2n c=1 sm=1 tr=0 ts=6997f715 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=8BAK5ul3PV33nhPFZ3EA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 1ofQkUBk7DabEAV392MmcGn29MRl9jnI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_06,2026-02-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200048
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-266805-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 36D59164D2E
X-Rspamd-Action: no action

Support the graphics clock controller for SM8750 for Graphics SW
driver to use the clocks. GXCLKCTL (Graphics GX Clock Controller) is a
block dedicated to managing clocks for the GPU subsystem on GX power
domain. The GX clock controller driver manages only the GX GDSC and the
rest of the resources of the controller are managed by the firmware.

The Graphics GX clock controller is a reuse of the Kaanapali SW driver.

Changes in v3:
- SM8750 GX controller is reuse of Kaanapali SW driver, update the
  bindings.
- Remove 'qcom,sm8750-gxcc.yaml' as it reuses the driver.
- Cleanup the 'gpucc-sm8750.c' to remove the GX clock controller
  reference.
- Add the corresponding changes in Makefile for gxclkctl-kaanapali.o
- Update the device node for GX clock controller.
- Link to v2: https://lore.kernel.org/all/20250723-topic-8750_gpucc-v2-0-56c93b84c390@oss.qualcomm.com/

Changes in v2:
- gxcc bindings: remove double colon & list the names for power-domains
- Link to v1: https://lore.kernel.org/r/20250708-topic-8750_gpucc-v1-0-86c86a504d47@oss.qualcomm.com

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Konrad Dybcio (3):
      dt-bindings: clock: qcom: Add SM8750 GPU clocks
      clk: qcom: Add a driver for SM8750 GPU clocks
      arm64: dts: qcom: sm8750: Add GPU clock & IOMMU nodes

 .../bindings/clock/qcom,kaanapali-gxclkctl.yaml    |   1 +
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |   2 +
 arch/arm64/boot/dts/qcom/sm8750.dtsi               |  64 +++
 drivers/clk/qcom/Kconfig                           |   9 +
 drivers/clk/qcom/Makefile                          |   1 +
 drivers/clk/qcom/gpucc-sm8750.c                    | 472 +++++++++++++++++++++
 include/dt-bindings/clock/qcom,sm8750-gpucc.h      |  50 +++
 7 files changed, 599 insertions(+)
---
base-commit: 350adaf7fde9fdbd9aeed6d442a9ae90c6a3ab97
change-id: 20260217-gpucc_sm8750_v2-866576675fa0

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


