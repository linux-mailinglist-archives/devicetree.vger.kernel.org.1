Return-Path: <devicetree+bounces-262475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOQlLYStgmliYAMAu9opvQ
	(envelope-from <devicetree+bounces-262475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:23:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 38584E0C8D
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:23:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 71CAB30C3D02
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 02:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 500AB263F5E;
	Wed,  4 Feb 2026 02:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mezqnqfr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BG+hE9dM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B4D299924
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 02:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770171758; cv=none; b=RSc/pCFwJ6B9My/0zas5X5kycNX9euhf2uYF8Pg9wDgsEtPaBnZuX9CJtqHM2uCihXffFJuXhf0BhODoa+eb1SnvnxTU/KDmRNzUfIJnv9kmissbn13KBoumhV3duGI1VEkGhiSSTRID5v/2f3y1X0XfmHmSIf653JPsodNNnHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770171758; c=relaxed/simple;
	bh=YLb/XR3/x26pgocTpj6GhcAmxicZXGqUhPkjHb+2r5c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qY8oriCSU955Wyj0paEwilFrKRbgmXvRPs3IWUcMJPOtw7hhKtjQgjusQo4zfrSVDaqvjOMuOGRG/40xsc9z/OHOOaJhHL+ELbTC8GtEvBW0QmSsmMNIhdHbqyEGpXlA9IEZigaHnnvrQ8TAuw+GdUnGMwlMEGCodP8R7WrYlic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mezqnqfr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BG+hE9dM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613Im6YS4123247
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 02:22:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=bc3EyfkdPUkMHzZwZH/NnA
	I4VdVDvHXvneEpxKHuMBM=; b=mezqnqfrBhYR5EVVFTYWMVepZsGF+Wf+yJ7ET/
	jAHcaUs88M1jUWdG3o4NMjb+DVfElSZoILcYW8YECqj1dezDDBfC3eL/XLzgc92x
	mcKrCPz/6IK24WJWQcq/f05RGvpDkYROlLjk3vJByosK7Ii0O4xD93OSnLOzMWKU
	b6spbO09XXRHNZGuU9MZM0m3+dm6mGjcQ4Srp/XpCz8naQmYl9TWVYjteeUON9NB
	mCeMgt2yLIR3keldJ7peeFtK4F6MAE8pDHI7vhJRydr2dvFFU4v+cELcx7CRPZUs
	0uwAlHJazPXBCos8NH58A0qsBSS9tuzIMBnJSvc61eIUQkww==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3kbkj5q7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 02:22:35 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81f2481ab87so5879683b3a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 18:22:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770171755; x=1770776555; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bc3EyfkdPUkMHzZwZH/NnAI4VdVDvHXvneEpxKHuMBM=;
        b=BG+hE9dMlRF00pBXeY/i62tLoP9U1w2gu3ndbL36+/lRHtGXdRO4PxK7pgLamxygTA
         eyH//mbUp0pZ5qeuRpLjxAeUKqaCBr+DUzNHI+JGEdOtWLXACQ/XgXYYweXCecBvMGNB
         +9Jjh90S4+2UkN/hnKqR9Oe7LRTCXaPAID7fWb8jmM5MP+RRscMfYJyMHdW9fJiWpZIs
         0CQ2vHHvB4bT/6sa5YOhUGY74HeSbUJCUgbZhd6MdQeVIj0/lce6VVn1rtSnZeEevxHp
         t7dCS81pRHv8/sMFG/0E/hcJ5QJwmzW7zDAcnY1hDdtt16+dfEXhwbyNNpF3UY7l7DzT
         gebw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770171755; x=1770776555;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bc3EyfkdPUkMHzZwZH/NnAI4VdVDvHXvneEpxKHuMBM=;
        b=K5IlalH+qH/XMtCnkcXrSCqanJ2M+r52lOMppXO9oCpTCCEpt5+0U5ncerrc3T9t8Y
         HaO71eXw6oLt6uf0xiNhhMZu7+0z4WJXGEWQUF1IRO/h0EmxBFYv1EBxjECMWSvmizMy
         Gt8czF03ThpOps+b8DIdc5SdXPtFdFwAx7V7bF5lHd8jWAEsb2IEBs95opLmhSdmFIlE
         Bx4dA9KUro7MINFyEM6ppO61SZh+cGM2mdPnxxn1rcmO7nGgARghW3hgu1cqWzGeiHhO
         srq+XD0MiGrkFTL8CawT5XdU0PnT3DTpBWJluNnyIOFg8n2iB894LvNjiardYLLLYgkB
         oSEA==
X-Forwarded-Encrypted: i=1; AJvYcCXvpLamxpFFuYkuX1LU6X7AM978voSa/9ojfpd5xmln5mivUlHZmTSPczs13wKtvXyPGQseOtS9k5du@vger.kernel.org
X-Gm-Message-State: AOJu0YyI2NG6fsKVoRHN1ZiNqpGbX6pGSmmsPC4YbU5E7FqNXi0kUJ/v
	fu6S2iNanXMZPHRwekqUtHnbBa02dUjjIntU5LD2YICndEWx4RM1Lz6A5drIOj1I+TNe3CSMhiK
	+jJHb9WPG5bNpsPoA6q4icW6U5THBPvAWWBZE0oeL/ekJaKvPqUclmdHY82meSMGV
X-Gm-Gg: AZuq6aLiz4bByhVEWH+1ChUpAKTaM5Mo11+Mmz+1IoF4SD1a2S4fMsr2zf1Tq2EgJYJ
	E1121QP8q+SiDlxhG/WRqF2elLFlf8PVmI7NcnXzVMlGy8+2HLo8KqA4QuAvhMz+JjJ2l9FTm5Z
	Z8LNyBwwX7H515wj55DamLbqKUpbvFBSaNAaMxVZT15jOgx/AdBeD5SE7JT6qG+lHk3WJO5EWmS
	7PuJ3EYRspQUxmCtmzjIWI+dltXNfkpLnaUoTSA+rz4aN4H/HVorKNkPPPeisHv5V7J3m52AegY
	zth3GgX8H6OkEK4RH2p/rRb2sT73Tce3Ccbr9BCe2VrVTFL5z6Uh+QrtrYgtLqBZmnntld0tU9U
	ebBKvk6Lj7+nDzsHNvFDb/F9Tde8MaE4pLTYHy6wCIQ4w9ZhtimSG+XFd5erNBHZjM1btBTzi
X-Received: by 2002:a05:6a00:2d97:b0:823:1d05:1660 with SMTP id d2e1a72fcca58-8241c7194b1mr1296591b3a.52.1770171755205;
        Tue, 03 Feb 2026 18:22:35 -0800 (PST)
X-Received: by 2002:a05:6a00:2d97:b0:823:1d05:1660 with SMTP id d2e1a72fcca58-8241c7194b1mr1296560b3a.52.1770171754677;
        Tue, 03 Feb 2026 18:22:34 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d4a5c28sm695598b3a.62.2026.02.03.18.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 18:22:34 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Subject: [PATCH v3 0/3] Enable CTCU and ETR devices for multiple QCOM
 platforms
Date: Wed, 04 Feb 2026 10:22:00 +0800
Message-Id: <20260204-enable-ctcu-and-etr-v3-0-0bb95c590ae1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAEmtgmkC/43NzQ6CMAzA8VchO1uyjyjgyfcwHrauyBIYusGiI
 by7g7MxXpr8m/TXhUUKjiI7FwsLlFx0o8+hDgXDTvs7gbO5meTyxCVXQF6bngAnnEF7CzQFUKJ
 tqLGC17Vl+fIRqHWvXb3ecncuTmN470+S2La/vSSAgz6qSmhJKE19GWMsn7PucRyGMg+2sUn+Q
 cmN0oiVsRUhmi/Uuq4f0R56+QgBAAA=
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770171750; l=1813;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=YLb/XR3/x26pgocTpj6GhcAmxicZXGqUhPkjHb+2r5c=;
 b=/7aDF/h+UeR6MhTfa1L+9LwDPJotXrDQdU/XYhsJ0EkTVKm6D//Xivz9/GBoddFBMD93ctsGB
 2eJS2PasDq8BS9W7bNA1JD/bIT4K9Q/S92ZKWY4AmiUkx/LJh1m004q
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: 6C72oIBuLIeeGa0pnvsDXe-bzyjD_p1p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAxNCBTYWx0ZWRfX2yKrhGThHbsK
 58LSA85DEKQ+dzR0eBshmhQvSx/UAnzNYYu8xlcxaeyyxaPEehBrstof4Cu/BYlKx2/3c6XAowG
 CZ6Vrrn5vCldN1vaSkIpqWCze4ljs/UlfKtCQdf5/aM8EXEXXVl/7+u7jChS8PhDiJVVjtaZ5bs
 C/0c2T7Yv6TByJJesyLjyiTsfZB5TUfTkvV+BcHOazQjE5VRv769RRXo/7FN9XbcLNl/MWNTjWt
 ELF79628Owq+R8kRs7W5hK9/czbvI6zkvbpGRKOvRvV8zOX8giZnpu+KkmnZW8sHVNYuJ0w+XNU
 +IKYQquwcl3PYtudPGMdarkW1/F7ue90NS6006mhnw0dOcU1BCs01p6w0orjo5scTIm/aTANeYP
 sNj7+4x1ugE+4Og7lqw5zpj3iPhVVjPAPRB89MVcb6ZsslwI1dgnYm0W89sya4KGv8d9jCw0y9L
 cYmgU0UGng0/DNndKvA==
X-Authority-Analysis: v=2.4 cv=BKy+bVQG c=1 sm=1 tr=0 ts=6982ad6b cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=pO0fZtIvyn0UN2_VQdIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: 6C72oIBuLIeeGa0pnvsDXe-bzyjD_p1p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 spamscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040014
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-262475-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 38584E0C8D
X-Rspamd-Action: no action

The DT‑binding patch adds platform‑specific compatibles for the
CTCU device, and the following Qualcomm platforms are included:
Kaanapali
Pakala(sm8750)
Hamoa(x1e80100)
Glymur

Since the base Coresight DT patches for the Kaanapali and Glymur
platforms have not yet been applied, I created DT patches only
for the Pakala and Hamoa platforms. I will submit the Kaanapali
and Glymur patches once their corresponding base Coresight DT patches
are merged.

The Hamoa‑related patches were posted in a separate email, and I
have included them in the current patch series.

Link to the previous Hamoa patch series:
https://lore.kernel.org/all/20251106-enable-etr-and-ctcu-for-hamoa-v2-0-cdb3a18753aa@oss.qualcomm.com/

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
Changes in v3:
- change back to the numeric compatible from hamoa to x1e80100.
- Link to v2: https://lore.kernel.org/r/20260203-enable-ctcu-and-etr-v2-0-aacc7bd7eccb@oss.qualcomm.com

Changes in v2:
- change back to the numeric compatible from pakala to sm8750.
- Link to v1: https://lore.kernel.org/r/20260203-enable-ctcu-and-etr-v1-0-a5371a2ec2b8@oss.qualcomm.com

---
Jie Gan (3):
      dt-binding: document QCOM platforms for CTCU device
      arm64: dts: qcom: hamoa: enable ETR and CTCU devices
      arm64: dts: qcom: sm8750: enable ETR and CTCU devices

 .../bindings/arm/qcom,coresight-ctcu.yaml          |   4 +
 arch/arm64/boot/dts/qcom/hamoa.dtsi                | 160 ++++++++++++++++++-
 arch/arm64/boot/dts/qcom/sm8750.dtsi               | 177 +++++++++++++++++++++
 3 files changed, 340 insertions(+), 1 deletion(-)
---
base-commit: 193579fe01389bc21aff0051d13f24e8ea95b47d
change-id: 20260203-enable-ctcu-and-etr-31f9e9d1088d

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


