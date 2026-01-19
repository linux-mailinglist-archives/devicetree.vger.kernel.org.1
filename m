Return-Path: <devicetree+bounces-256786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 076FBD3A554
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:40:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C1B5304A118
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3783C30CDA6;
	Mon, 19 Jan 2026 10:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ex9yCai2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OhzShdW+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADFE830B510
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768819236; cv=none; b=iVcSMiwdVernMhhOo+EmLr/OU9JxXntLB6K3jwiDY+/ZAxnXkQ9rPhn3xVp7DrGEEINe1o72NUgHqhq/mNUGfZ4uUlhL4xgVZo3NMKsk/FtyRPawWF+LTRo3uhIi9YndHew5AedDi4rOJkrSUvohnLQwxLD8zlUU9jpZYthxSpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768819236; c=relaxed/simple;
	bh=iSlD7Dh/mbSNiQJOq0DMMW6/96hXXaA8D+ljD2AYSQQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=g1KMUzt/3YMDVTifJbGFw0A6wnOMBOlNlOez7pOwCs6AohUTcDiPAIGLZVg+XYgCWiy4AlVYI/eYPXU7jiuRJEv6XEpyMG2cLLe7WhqEek9kbm789XdRwgMxahsFiZRxNOo5xKdIkOzzna+aVRNCHd7YgmiwJvdbTCRmm4cBQ2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ex9yCai2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OhzShdW+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J91FqI748337
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=vUfXZM6AiYyNqMON5WUuZG
	EUwe4BPoqrVV35Lqaruik=; b=ex9yCai2MfTnTplGDoXVqEhON42NGGCsaM4L6G
	mCHZ18c0KyV+mODSNZn3WmtdGsTLrOfmUaCU+NhXkG7X1eTSsNf/TtTdzYdEjXzQ
	Cdzz4Zj0SptSY2ZeLLvvTxc76yzXYdqBmCi+5asKx3kclqx6TGxGzS59kfbnW2hT
	zGclV3ubYq8Vfn0iUoHoo9/Aoib2Qdj3OkhhnTnNcQWJm8n50RlkgfF8j2RkzyXz
	JGmgFsxdzjAHtSWfm9F5ZGM4mqfnyCYsTlGhd4tndPplrWftLo57Id9ELbuExTb7
	hg4GLa8wt0+COOuq/QSmuwmwOiiV2xwPEDe7eQx7zF/ZW5YQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br2t74qmh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:40:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c53919fbfcso1029921385a.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768819232; x=1769424032; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vUfXZM6AiYyNqMON5WUuZGEUwe4BPoqrVV35Lqaruik=;
        b=OhzShdW+kLNtjFFBE7EfNlJGsB8dPAMEcozOc3vTVAErKFQumsi6fzucsAARrjj/R/
         hMeGLiga8ON7zfWrEjmHyzUOEsgpeP9sqdtXDg9HxxFiK//LNvM9PG5bdz4yO6+sGsQO
         e+DIRBcMJSAxv6qixb+JgGPPBQaa6RvLbiFNQ3ks2unpzIQP+YdyGM3RFiYpwmo4PuQc
         Tce24aeCwrCoQylz/hcS3WpLz0cVqTYV1T0NEZu5xAvUjGZq0PGv9qyAGvZ2YtCR2dEn
         zvMWUZZsdxz/zF+hJzbJmWV5DVAN9MUo9bzEbxpoaUIulEHdpcwgO8i+cKDl9G4Whi0s
         xRjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768819232; x=1769424032;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vUfXZM6AiYyNqMON5WUuZGEUwe4BPoqrVV35Lqaruik=;
        b=VpxaAeU81BZtTKvz7OSZ3dNvTvGQky+0Ly24mYluzizuY8ALlZgxwYKJey4e/cLhKE
         r6WyKTajwzTQb4mWC1E7p9lqk3SZlT13zd7xbl5Z+15CPC24xQB8jEw274OApNeWMzj5
         bpTMaEJgoCjEITUEdlo71lW9vAE+/908Wa/i0EdPHbqNU/cVwyd1kPp1pcWQD9EvpC2t
         BZYZpr5xElHMQYs1vsol5XM9T8+MJnMN/l6mom198czNM/ALtx/kwzqNdHNsKVuPuIHF
         yhbeDpojHZw9b0PNsUnacjLwXaqzPpskMjW0K1UP/Nfmwyj7HTwtpc2PIsp1ktdYWyNu
         4S8Q==
X-Gm-Message-State: AOJu0YwLOHIKtZBgbiZnj46QkZapkM/FQuFt9UIBeb44E6o2sHObKbnr
	2uj3EbvvAda6WmsYlTV+TnFOvX10kcDmSVrt2EOGJU5IaDjcTrZMT5ug6XHyEwrLbDzqX7BlaGs
	uOKhzf44RUnZ1D9tl/CFbiL2PqjWtBI4353MdRxKkeL1M3AAbOt4fpunZNvDXByKB
X-Gm-Gg: AY/fxX4hMGDc733BdQ8HPor6kDv1itn78D6/I/hwKAV4YGqhsqymfxWSpmUwfsqfgv6
	s3ulon5I7/1mlRrA439jdeFvSxmsxCYqn6JpV3o9xU5TOzjnH/hzKa0wGkW459QrWyXYg8l3ms/
	SxM4cZY9psJ4ltg4YkmBc/P8O+3Fa1QjUMp9suPwQTInMs43esAKSCvD2woceV8fNXoTDnT0XG3
	e7jln0jsf5Y9HSm27DPT2jIJhPVzvdte2+TSlORT3lBi81SNatGkVQWhILwXwCcBv060bk4ewpz
	4ML8IXB6UsSELakP5RU90bGSrAgFu4+fiBNgh9V/5TV2S7Z5299METrLVFY8c138apl0Bxdbc7L
	kOWBnAD0GGJqPyKOQ/ZR7/OypNvgvz1ekXiHcYmA1
X-Received: by 2002:a05:620a:700d:b0:8c0:88f3:fac4 with SMTP id af79cd13be357-8c6a675aca6mr1531012785a.56.1768819231896;
        Mon, 19 Jan 2026 02:40:31 -0800 (PST)
X-Received: by 2002:a05:620a:700d:b0:8c0:88f3:fac4 with SMTP id af79cd13be357-8c6a675aca6mr1531010485a.56.1768819231355;
        Mon, 19 Jan 2026 02:40:31 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:4f55:d102:7129:1a8f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8c9cbcsm185185245e9.12.2026.01.19.02.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 02:40:30 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH 0/8] soc: remove direct accesses to of_root from
 drivers/soc/
Date: Mon, 19 Jan 2026 11:40:11 +0100
Message-Id: <20260119-soc-of-root-v1-0-32a0fa9a78b4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAsKbmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0NL3eL8ZN38NN2i/PwSXXPzZAuzZFMTA0ODNCWgjoKi1LTMCrBp0bG
 1tQCEhjJgXQAAAA==
X-Change-ID: 20260119-soc-of-root-77c86c54010f
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Danilo Krummrich <dakr@kernel.org>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2033;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=iSlD7Dh/mbSNiQJOq0DMMW6/96hXXaA8D+ljD2AYSQQ=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpbgoPyu5DMHSDKBFDw0X0fP2m0FmfzN/Sdyy3W
 dqzR8wP3oeJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaW4KDwAKCRAFnS7L/zaE
 w3nQD/0YIZZ70BVx/YX83RjrD4BVPwudBPlg1Tus56sNutGPvS6lJZKSCW4P0t4BaiGMZYu0uXx
 DwSJRVUSD1zKm4YMyapEElVBmfRU9coZHgJpytVECZ3rhW0J6UyQtwHt1NdxBjnnGtvLekAiCUi
 vXpZ7P4xjn8TGkDrrO1PZRCSsxtwNMqQO3EJchlBxdPTBpZTGRvAKkoqYunwCejG6n1270zn98f
 X7MuSTcMvRTNqCwDzrzE3XOyPd35CWzMzMc//cChVADri226wL5wnjLkcmzaHJl+475efNQP25e
 LgL+OK2N6W0HujWTQQ7wUX68ImeORNrNcitC/JR4yg5498se0k9EYa5fSzVG4vDL771xG+QgNTm
 EqRyPPYj5Lv9aKzRsk6qf3tq5lpJGg7len19ubZ0SCzH10IsH6KOPF0LOAUihIR8A5vHVMGa5Sk
 crm/fM9EtP+WfFiTbkIUnkno84RmJ/p+BkIG90rRr2+vHGY1fIDfzcxsSgrtLhfOijOCC40nSla
 Ow7zYwTN3NNbOY/Hr0nqgcIRGp0UX0vW+EAv5ci1cDzFvWJ6PqqONuFE6xGalVaCwYN1zW9qh3w
 b9SP7pAjgLY6XTwQNhpp+q6LC+rE352LHeeE5ZPYuj39akWt1a4R+s43+NJH+aC2ifjqziQF+jx
 yElJMXxuP6CE8iA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=Fdc6BZ+6 c=1 sm=1 tr=0 ts=696e0a20 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=IK8FBO9Hk_FkL9rbzwgA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: SqFVvRC3-SGNUnQ3tlRumvLb69ApHe0q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA4NiBTYWx0ZWRfX3XTsMyAo4O4y
 SRq55iG7BJaKgAAfgeuGw/jlTHIskEQ9U3GPTPmeDOcSTt/o9O1ZRET/q4cznf1iJ/TJn/Rrjgs
 6e7bHYez+Ew80ZBusGkNj0IfAy2XJ979ybPKPf7h7Ug0hUxD9RDTk9WwpuJsh0pLmK9iwxskRmI
 QXn2RJj7njNMDwXNyWsMI6hTzZbd6jW96qXhPvAWjPU+amI9jF5ugOVazkvob9ejP50MsGKBpug
 t4bxscgNUgrsjTbnaXrIZa94RxILRES6p2qvRPkohWQnC9jSlAzWOR8/K5LkDRsxEpyI1wG2hFy
 juEanv9SlbYWEWB/x0z6KwDk350/Y+LD1LsrrlzTjIpbpeWMKNHjUxGBj4uz/u3P7Lg2FPXvYe/
 cF1hO1Hsnlb/hTvnqQWEsjpOxjPKY1Cf96+tuVQ8HIJprR2N1dFnXQnFyW0TTniOD3OdBVhlRuo
 nRt0TVjlx225dtO2SWw==
X-Proofpoint-GUID: SqFVvRC3-SGNUnQ3tlRumvLb69ApHe0q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190086

linux/of.h declares a set of variables providing addresses of certain
key OF nodes. The pointers being variables can't profit from stubs
provided for when CONFIG_OF is disabled which means that drivers
accessing these variables can't profit from CONFIG_COMPILE_TEST=y
coverage.

There are drivers under drivers/soc/ that access the of_root node. This
series introduces a new OF helper for reading the machine compatible
string, exports an existing SoC helper that reads the machine string
from the root node and finally replaces all direct accesses to of_root
with new or already existing helper functions.

Merging strategy: other than patch 1, everything else can go via the SoC
tree. I suggest Rob taking patch 1 for v7.0 through the OF tree and the
rest can be picked up after v7.0-rc1 is tagged.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
Bartosz Golaszewski (8):
      of: provide of_machine_get_compatible()
      base: soc: order includes alphabetically
      base: soc: export soc_device_get_machine()
      soc: fsl: guts: don't access of_root directly
      soc: imx8m: don't access of_root directly
      soc: imx9: don't access of_root directly
      soc: renesas: don't access of_root directly
      soc: sunxi: mbus: don't access of_root directly

 drivers/base/soc.c                | 26 ++++++++++++++------------
 drivers/of/base.c                 | 13 +++++++++++++
 drivers/soc/fsl/guts.c            | 12 +++---------
 drivers/soc/imx/soc-imx8m.c       | 11 +++--------
 drivers/soc/imx/soc-imx9.c        |  4 ++--
 drivers/soc/renesas/renesas-soc.c |  7 ++++++-
 drivers/soc/sunxi/sunxi_mbus.c    |  2 +-
 include/linux/of.h                |  2 ++
 include/linux/sys_soc.h           | 10 ++++++++++
 9 files changed, 54 insertions(+), 33 deletions(-)
---
base-commit: 46fe65a2c28ecf5df1a7475aba1f08ccf4c0ac1b
change-id: 20260119-soc-of-root-77c86c54010f

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>


