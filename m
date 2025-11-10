Return-Path: <devicetree+bounces-236526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D908DC4522B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 07:56:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 930093AE4A4
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 06:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AA992E8E0E;
	Mon, 10 Nov 2025 06:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gnYYw6cp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Byjgce0l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72E51DD9AD
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762757777; cv=none; b=bpF2OdUuZ+agrUqbHLZ2YRrvsNftC8eGR+MMdicYkuPel6VEg9vkTueCF5zEOktmsaPgG7PTusUh9S8Q9lbUPpUs98pyGff1K1gTjVL81E3ZhMVJflsm3Drt+iW3g4HFgDnbN4UAsf0c8s6JJomTa95zV42uXfdczJ8ptz3bHpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762757777; c=relaxed/simple;
	bh=V+DIvAVczDzOt/Tkg6whkzz5HQVAibDy8MvhqHSfRCA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Gkw+xAOTcsH5PQmLLgCa11ifXthUU2Ni5OqBfhtZab4mOJh6CgcBWkBmnqDy0UB6pfgkZ6OaEZNbcnMyqNgVqX0RzDuYLK23un6mlxsd99h3HWoTb4k6BCKVwLEpjGkNqCvPKgJ9yPrrCwQtuCckVtEYTvZYLNyppb5mR5FtHHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gnYYw6cp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Byjgce0l; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A9LP1T21388390
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:56:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bPP/EyjT2wII9bMHLU4QX3es3K/LqGTkzbqM6Papzbs=; b=gnYYw6cpx0Fjen+H
	5qy7EDBTI5wzHU79FunFy8v2oOvdbsBpNa+xlqa4ZQ3vRMfqCy/4PmHkS4oQ7xf7
	lNlZl4MIrrQNECJ91RW5IJO/EINtjC9NMot89W9MtfyC26BvVzFauBh5XzIOYTWb
	7snJMy0+nVwcETJ95QvtfYDiWqjyxXnufN6B+6vf6B4kspbvPUbSTVXcQH0CJGmW
	8UElZWBfup89uCQp+lQpx5kgls3xDWjN0LgXa+ZNq6i21HcVxq5Tgoa0wtKsu/yX
	KJwtHAYxU6pi9l+0+ANMArqP/odd1rOG1B5WvVcBkkCRbkYg6l+WXuz/zESO5FAk
	nN15SA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ab2nxh0wr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:56:15 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3438744f11bso1319762a91.2
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 22:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762757775; x=1763362575; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bPP/EyjT2wII9bMHLU4QX3es3K/LqGTkzbqM6Papzbs=;
        b=Byjgce0lWBZv112berjZMKlCBZ8K5AiTTEdS8ZCmxlt+pEWHs/xQ5rAoxzvvfrhxOp
         00K+Idtfeg898CWXcKD9XxI8c1rN99EUqdLZtit+qiTduvHIGGINatDD1jXtQmct12cX
         UOv70MQCZ6/1T2uH2+qYWAGSnoFhg3kRfloK+qnVcOzdbKfdH8M71uhinW4G3MhZpfaQ
         VAGN37BTKIKB8ji4E3jDIxLHDfZNrlsrAzqqZmVvjXDCMxxCnFFxW5oeh1BGHnECH69t
         RwG96WFMFgudzh9r6HznvLaFpgpWWUfxGR6UGSYw24qgYJWds6gy6E31zqiTiRlG4iDO
         nnPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762757775; x=1763362575;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bPP/EyjT2wII9bMHLU4QX3es3K/LqGTkzbqM6Papzbs=;
        b=HwexFGJfPA3cucZzjIowZRWHNwtWr+1G58ztAQw5bV0ePTbVHrmsvtGWUrdbAS/BF6
         BmVq/4B/2Nc6a2/d+cmG+qGKoGe1NpxxTlcoA0QOjS1sQ4UqwBL/CYVJ24zJ6pP3SiFj
         +agvt6joY63dxV8MdpymM4eej/1nwIUs8wQmphSXPyK4/cpCXQtp0D30WXOZTFkVKDLR
         lFXZ9U18XqrPZaHeWiKJNZGSXadrdnkjiPM3z0c8TP6m0A4HVzfd/x0cii8nN11PSWD8
         RW6barwlPYaTY2ihl58LOOFJ1oa2mngmxbFou0m7J0J+saiFbOIDE3sDcmrFKduGBJXV
         yLDg==
X-Forwarded-Encrypted: i=1; AJvYcCV9v7xw6G6lVD/4PY5H9lgCWDzJjZt1y9sybKjBrn6080HIhk3Gg+ZiQcknsCA1ZNipjo2b5LKYppJA@vger.kernel.org
X-Gm-Message-State: AOJu0YyP59pBbqC+wmaOgKep0xhnIBujTtvZ8Y9FV/rxSpZVulmS2MKx
	A0TGDlOsjN1xgz59Ia/op41ARPXUgeNG0dF8nm5yO8mgHZDMcabO7f9xKcwr8xfo7plLa6tqcm/
	AoDRaz5bTCgj87pVIFv+hd8DXJTO+K45VG6osDll2ZjtQmL2CjsS2UziIEwjX5Dq2
X-Gm-Gg: ASbGncsvoBUAJAzL5fXO22iIg5AQdWuCUFGU2LXSDTkRGx3MiNtOsOC2Q91HPfNuehx
	VO/0PQ+neeGPy3ahZJ+FMQXYXnABmBP1gNr6DU1iVCPQzcan4QhRJsa3qO0UvQkvukJkVmckBNm
	FkkONYUFTOunZhenQhG2THmdzwP8nuTQ5Clk7e3wR1zfBVqX3WHZ7wh2VKm3imaMAlv0D0ex7um
	XIfYkzrWDdSQXDCQaHWXOXMS0kHoCMdxeasgUukPtAvReflrB0s5NvwHz0/iYrc+jBn0raqGCu9
	kL+ssabyIXoBHjEv/G1/rahJ2qzQkCJ1w9KDr4xTt722yyeUZ/iDfWMkxK1aQ7Y34bDZHgaNVjU
	d
X-Received: by 2002:a17:90b:5710:b0:32e:5d87:8abc with SMTP id 98e67ed59e1d1-3436cd0f1f0mr10125496a91.36.1762757774583;
        Sun, 09 Nov 2025 22:56:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHYMFCEW+VsM+etUbmQ/zHKtVvlMdywCxJgC9tLLnLF4IVTMN7CmfPAWy4Wy9Uex9snC5RxDQ==
X-Received: by 2002:a17:90b:5710:b0:32e:5d87:8abc with SMTP id 98e67ed59e1d1-3436cd0f1f0mr10125465a91.36.1762757774113;
        Sun, 09 Nov 2025 22:56:14 -0800 (PST)
Received: from [192.168.1.2] ([2401:4900:884c:92ad:3fef:1d6a:49a7:308b])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341a696dfe9sm16705022a91.10.2025.11.09.22.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 22:56:13 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Hanjie Lin <hanjie.lin@amlogic.com>, Yue Wang <yue.wang@amlogic.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Andrew Murray <amurray@thegoodpenguin.co.uk>,
        Jingoo Han <jingoohan1@gmail.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, stable+noautosel@kernel.org,
        stable@vger.kernel.org, Linnaea Lavia <linnaea-von-lavia@live.com>
In-Reply-To: <20251101-pci-meson-fix-v1-0-c50dcc56ed6a@oss.qualcomm.com>
References: <20251101-pci-meson-fix-v1-0-c50dcc56ed6a@oss.qualcomm.com>
Subject: Re: (subset) [PATCH RESEND 0/3] PCI: meson: Fix the parsing of DBI
 region
Message-Id: <176275776139.8821.9724702125495761876.b4-ty@kernel.org>
Date: Mon, 10 Nov 2025 12:26:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: tYApKntphevRqE1xg6vQRNTOTTivtX-d
X-Authority-Analysis: v=2.4 cv=DJSCIiNb c=1 sm=1 tr=0 ts=69118c8f cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=F-EKWGjZHOx0vckpNnAA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: tYApKntphevRqE1xg6vQRNTOTTivtX-d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA1OSBTYWx0ZWRfX6E7oWJOYKQnI
 eDDTTixWEE5XlLU9xfto2WAfs57Ufhm/pLArUh7U/IpVZGxYKKWnQAFQTStHmzC87S1Ils3uXXu
 qmaHamdyZNQA7i9XIu8WHOr9Mn7xovdxtPBgwB1/JIlOKHEiO+DNJ/gHbo8EiwsUIkoSOt3bmzq
 Sv9kLXxOCsQux0krkzEISOfqQBPEbmUZHdAy8AlUIw/fEOV+HKdbD5V1ekY84bFL6MhGPRMNJgw
 OKE7COR/f2Knp5rj9+1whFhK/sowaovYih6aEylshH+Hi89WFGR6NDDEEQC2aCw/cQglLCazOU6
 0dA8mcRT1qQy3i65PKMpiIKJwUgaItqVTuX+TZmO65MPfEE13mm9J45AHmy13cx6vujhnzujRB1
 ciXdOhvxv2iKxnngZOdhsx9zMxMOpA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100059


On Sat, 01 Nov 2025 09:59:39 +0530, Manivannan Sadhasivam wrote:
> This compile tested only series aims to fix the DBI parsing issue repored in
> [1]. The issue stems from the fact that the DT and binding described 'dbi'
> region as 'elbi' from the start.
> 
> Now, both binding and DTs are fixed and the driver is reworked to work with both
> old and new DTs.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: PCI: amlogic: Fix the register name of the DBI region
      commit: 4813dea9e272ba0a57c50b8d51d440dd8e3ccdd7
[3/3] PCI: meson: Fix parsing the DBI register region
      commit: eff0306b109f2d611e44f0155b0324f6cfec3ef4

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


