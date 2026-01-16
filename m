Return-Path: <devicetree+bounces-255821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D1170D299A5
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 02:27:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 49739301D50D
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 01:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D37DB333453;
	Fri, 16 Jan 2026 01:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B06C8vwl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iz8HgTXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C11633342C
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768526816; cv=none; b=cs2YcB0aHKZJ4uu1MDFXj+X4aQCjL+Q5TEc/Q2w2XLcn+M5JgMF0p37I01JdF//HB4rp+/51lT3SlyIPHjEjojbUtJm85O7H4QIpXC7QjCDFaVaWesiiQLsWVnYHU3CEuJCtnWOYGEeFEH0qZLvTHyTao0jiuJ15RGa3SUPBmAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768526816; c=relaxed/simple;
	bh=tkKapXJAv3P3u+XCyncrWRqWj5pzhnVqLBlDhYSg+xo=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=tUbIqd7NpjqQqST6rgPIg+vb89ULn8s553OV5IAl6roz21RyXiauUWj4Boi2DWOoq0p4aaCEfDqiNqla++T8GUZjIY1qMBeoZpI3bVSTEXTQF+XF3RhP0OKVyQLg9vNzQcoH/ODU1nl1FPZyE1C01AVWkzf2sYKCq0GccFSKgjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B06C8vwl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iz8HgTXc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FMbdkj3596641
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:26:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KHvpl0cOsSAPRSO1Igx8dlMLkSJkUG1m7ej0v0eL2VY=; b=B06C8vwl0TA2dTwL
	79HMs24/72z8faPrGXX3/3rhxK9IxI/5GQYbJ6SJ/at3nRbXj/0hHenCvaeh2Kqh
	uFUZBs29zeACJslZ7G5Z0MM1Ho6BPoMfUwP+DKQtaKCUkFJKBBnbJ3ITXcMBkTRJ
	DhCuigNc7yEhG46B+H8m+YsjV+GmVHxA2tTkThbyioP0xoaQSFQklha3rLSqGs+a
	rHWEL+x8RiYlE+9KaHBb+nYVYNUGafttnI/qEmEK5MVtZPR8szvt8m8hF95LmMV9
	ldAbA5CY8owqem9Rmc6sUCWN9t1JGAZbxiPCM20ffjbHmP+BdU3DARh2/yAydKep
	AoiWOA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96rrb6a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:26:47 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2b6b9c1249fso209104eec.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 17:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768526806; x=1769131606; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KHvpl0cOsSAPRSO1Igx8dlMLkSJkUG1m7ej0v0eL2VY=;
        b=iz8HgTXcPVV/dm9bIMVBU9ryUOFweMJDu8ntOcevGCVxgUVIJdUbs47Q1tX2Cz5hgn
         Zvnwo2sy5NY54s5XO3w5wU0WEGeWXEKhCC8hYPn/ygDPhrzodDnbei1uoWVIR4auS8/A
         q3So4oJKq26sw4eBeTiCP1sxfvaFydPn5b0dMqicKT7DAEeRWMgdDVcV16c715ypx2fC
         LSH1QJ7e2RpLu8lkj3/yUwP3vlfscvnrx/uHUCyXWdalALx5CTS1v8mm4puyN1AjUQ07
         /YdIcLAddRFhqBibqY3yvjyHBH4B39EoJ+FMij9PRSumMVszT6BaPlnjI5gulrX4kqxw
         RXvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768526806; x=1769131606;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KHvpl0cOsSAPRSO1Igx8dlMLkSJkUG1m7ej0v0eL2VY=;
        b=O6pTI2VWCOqOmQDXXK0FvxMZXWj+NQLTC1ZxWfRhJPpdgSIl8dPEP+no4WHDwuK0kC
         qKKerTaL0KFqKr0U84TnAdocZAzpyBsjAqHea+1xUc6cIgCJ5mtaV7Kjlu7buJoxzQK5
         HhNdjvXwJ0ZZuZeEyqu6zG2PIJ/XZIiACyzsyty/EYfLtAV4kAsQbruQVKnpnW3Lc+7L
         cxJb8A9yxMWLhh+PrPFky3oW0p03Iqph9/JUwaz3BHtnyffNJsm1QIKbvnfSmD/fw6yG
         PRxxx0HhdLW7IuIN4aDyrb5ofGeu+eqI4ihMwLYAZ6ombEkDE39WCvoSpGYHohpxTP2v
         V/Qw==
X-Forwarded-Encrypted: i=1; AJvYcCVkhvPPZSc/up4XOcpGmEnSTRJefSXbTM4lvbyylBSRYY6+huBy98+H3GufKigT+Mciz5DNVG5gRI8h@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8gtnNFh65kMRFL62exBfjdHiBtajiMESW9HjuJ8uMviizlceL
	1e089/sgYAhSQG2dL74A5EbGX+VmTluX/9hDg7f5m2dO3FBTOpdlUEUrWxmIkE1ZuV1YmGhBYwh
	OUvs48OJA9t9y8kkVfqqXv1jfgoV6e6LOBFPuQHz1xNwC/OIBiz7y/RSe3Z3Ryse6
X-Gm-Gg: AY/fxX5xhFoc4qK/aNNPaiukxgKnBTLveODXLqmHQMOyoII9ZoME817RnnidFWVIyYc
	NguQ4eBhEL90637t7dfzinHgKV56XTAqXLOqH6IQPl9f0hGk8XV1M4QiBABrmLvse1jc+/SXt5+
	GDDl5eaY5FE7ACKJp270VSQFSnkzu89Tc4lDA51gk4+ZzU6PVioomDVFEVwVoFr+J0xTJfcDZ0K
	6Qp1YNZEF9w5DTIXZqqRd1ifvsoJkmHlf1fAQ8pc9FKhbKe6rlIRMEqZzwD/gDQA/qp9uk3pUrJ
	mjCejMr/Pk2eJoUWCwZml6Xjdse+ir7DpUQgs2GEuiKK3URVKeKpTm4qOhyHJIOoaEBh9GQ9gan
	6/t5ctcP19TrLiTrUIMvWPUgUE6nztOpvLXWgTc8gHQPrFvUmGC7scfXJvU1x1YHA
X-Received: by 2002:a05:7300:6d1f:b0:2ae:5cb2:cc11 with SMTP id 5a478bee46e88-2b6b46d33b4mr1526114eec.6.1768526806334;
        Thu, 15 Jan 2026 17:26:46 -0800 (PST)
X-Received: by 2002:a05:7300:6d1f:b0:2ae:5cb2:cc11 with SMTP id 5a478bee46e88-2b6b46d33b4mr1526086eec.6.1768526805328;
        Thu, 15 Jan 2026 17:26:45 -0800 (PST)
Received: from hu-jjohnson-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b3502c91sm884104eec.9.2026.01.15.17.26.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 17:26:44 -0800 (PST)
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
To: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        linux-wireless@vger.kernel.org, devicetree@vger.kernel.org,
        ath11k@lists.infradead.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20251230114835.52504-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251230114835.52504-2-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH] dt-bindings: net: wireless: ath11k: Combine two
 if:then: clauses
Message-Id: <176852680474.1143034.17152758892782135246.b4-ty@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 17:26:44 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDAxMCBTYWx0ZWRfX18Iw0Uzz2k3/
 dOM15PFkFd8+fW2PK3hcebpkf/IfW/f6EVgP5fzyCFtgjRyFdN6f56tCsGtaV4PCCI6tDmWDEI9
 dLY/p5Ve4CYgDzRnffCrsYuoVCTK4R/yZjJB7Om5pmgKbctobMgNtQcdSRps1Ltn7Ny0FnnNCRh
 lMzKEcm4+TDtVAPV2+ViqVrConbTXCKnbVFRlA6wE01jxfaZH/cqcWa0J6Qr7TTeTQ6oI/DIP8O
 nWf8EP9nZ7YtkKj9Ov/xUWCpF6zn6CMzqY6YSdFaXKGkIdETPms1QRHqM7RI9br+wLURcHseM1n
 0Ja7sMGfK5WOlvvXMwjPlymT01Sew01ZBu+eGeE2PKCIdSF7pEK/DBqivGFZpeFSxoqDYpVKy6M
 dKIiDgn2nqW5p8yua2Z5/33qrk4DZO7lp30EritjGVjG0xBs9Kf/EgmxgUavRexYC+5UgNf+N8z
 gkw++q2+19Dfe2cP6Sg==
X-Proofpoint-ORIG-GUID: 7OuLLz4QihZcy4vgjcdnrFnBX9sL9qxu
X-Proofpoint-GUID: 7OuLLz4QihZcy4vgjcdnrFnBX9sL9qxu
X-Authority-Analysis: v=2.4 cv=TsTrRTXh c=1 sm=1 tr=0 ts=696993d7 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=YCnGg3YljQHaMnv7sjoA:9
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_01,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601160010


On Tue, 30 Dec 2025 12:48:36 +0100, Krzysztof Kozlowski wrote:
> Simplify the binding by combining two if:then: clauses which have
> exactly the same conditional part.
> 
> 

Applied, thanks!

[1/1] dt-bindings: net: wireless: ath11k: Combine two if:then: clauses
      commit: 2125381d60c572684cc4ca61a2b1cf44c7eab059

Best regards,
-- 
Jeff Johnson <jeff.johnson@oss.qualcomm.com>


