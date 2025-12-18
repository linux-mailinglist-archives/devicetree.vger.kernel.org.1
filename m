Return-Path: <devicetree+bounces-247777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5C9CCB62D
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 11:32:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11CB5307B2AF
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 10:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C951E2F0C62;
	Thu, 18 Dec 2025 10:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IJNXqYjZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xi20Ze0u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2453B1A23B9
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766053665; cv=none; b=bdCAQDG00Ak2cC4m81UItQDR5fJe9aUzzzie3+rVLETSlWR7P4zoXxnccA9XdBMkMMHMHDmsU1bdkglhXWs20iSLEuJVyxmAcDGO8iJzqFuL6ZglDcljjjE9iECpjszUF73ViApJydOAZa3XrKZVjMmSGYL9Ab/OgOV/y2C1cYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766053665; c=relaxed/simple;
	bh=OI71iMPCva/n2OGZyxyBKYJ1LY828j88+PQeNz7+1mM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eGIyvllTO8QCXAzYdjIGvP2hCav+NsyazJXLm9Qfq4jZT8za6JXH/dRX7PlILFxuoY6fn3mu3E2x1vHhq5IH5WfdwC6p+cJytCuvGvoOiwUykDSWBJ24/9NVlCJp3fJSaae5G/RtIxmMxQmlKP1WZXFkEL57235g39waIbT+xrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IJNXqYjZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xi20Ze0u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI99F0p237350
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:27:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Co3+UnxzYNDboe0H8zPytVumPx/fk5cCzhFhhgpDVMQ=; b=IJNXqYjZD2Rj/hNw
	J5gw/J/isgvIQznAd+3v16hKtA0gdCOF9xhFTMuTf2I6RVa3Rvi9MPWMjnT9WFtT
	m+m2/WsqYaHV/yXk5ddqUSB62PmzbU426AQq3+5BOtR00xEj6MNc1TPWw6SJjMjv
	nfUkyFReFTid2AuTAdZojZOxHTvaRrAV9NDI80gmoR/EOlMqf45FoSeelUIej0Li
	4ZvBkbe0QYof3lMdhPqkIBfxbcAc52lAMY19WPI+vAt1HRisg65NsrYi5+j6sVdO
	qrSfnRfOodQ4NlfZ7qMG6dKEIbiMKtdI4icYvMY0lSRwO5m1JWFV4vpz4Vw1HBbf
	Avwt9g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b44x3j194-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:27:43 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed82af96faso10770431cf.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 02:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766053662; x=1766658462; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Co3+UnxzYNDboe0H8zPytVumPx/fk5cCzhFhhgpDVMQ=;
        b=Xi20Ze0uELR6K04WLEjHsfSnp6e8rsTEmZulcl4agb7Wl/mkhni7qiNklSpDKrrynW
         OW6/vToHMwqNxQar18OOh8k3/kwUICELg+joQbN3TTw8QAsNjZspher3olAtFBhqlo9s
         vD/hcotQS2Zilq4nI/6X/QOAu++i8N74/rmFr6QgJWBZD2E+R3qtpA1MckSMyWMjOLdV
         HcJooH0HP43zg9oc8blsM8CEfZRuKkw/Zn7tklM+C4N/yXJ1iIF4Nh8XGLT3a4d5o9ix
         TtQPTFrsWW9/j+14EeXLquWA9VvU2Ixczk4iLRRz+FssmKbJElpsR63RE5jMvl9aEpl6
         WtHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766053662; x=1766658462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Co3+UnxzYNDboe0H8zPytVumPx/fk5cCzhFhhgpDVMQ=;
        b=lO2hsddiWW4/TXiUkEmfvzs6r/wflxd2XDuH/1787M5snYDl1PSgCIRWUDWN1Kbw/9
         KZyTFJJm5Vu8uYlY8nVwb1SLy01HcOwa6jTlG3bFn4ReE1UGI940HyR09KjgMiFFDB5O
         MIUy/jIbzT+k1w0fnSyuzGc06oFRF7F9021grbVtShkSRRS41iYBXqTOr4aR485J562w
         oByb3I6k5be44S+T6/bmX90dMzGnsuxZzDvCfVg4YPpZyr2fEaIIM52ObCyR+u5SAFKJ
         SeOO0at6YaY95klL3XD82T97YzvxO9htpd3VOAcyTwH7nfqA8QtOH461PMteAMgjTwJJ
         j0EA==
X-Forwarded-Encrypted: i=1; AJvYcCUXdTjWZTDxgisXNiSmyh9tAXuxDHwC3lYeofDCPyqy0KOvzLj/ftntpXeV8Y3Rfac7vB1AJD7bMnmT@vger.kernel.org
X-Gm-Message-State: AOJu0YwaAFclc5RGBVagBzZXEdnud3aF6s/+H8UVPB9OiT3Rmn4nzfah
	yROgm8hYkTcbhZRUdGjGCe4gnaTscXBZkTawvf34Rgr5FY2u5DgDwpfdao8fjnDH/HYZnlDKzWa
	ah2sjt8s/A5C8+HWG16/P/JFkyaU1lwpdw2GEfe5BXZ+r5fzS+ag7iDXBmlnLXWdY
X-Gm-Gg: AY/fxX7qnJmmzvxyNqDjbPwr23qCVJt7FOTEqvHlmTu+z15h0i3SGHlFeJD+AWwY0lM
	XR87hKc2/R/RvR+DAwWUaVDwab2WpE5jXwGwEQmEp9RqcZj9w2iPBhrtgD4YzEN8iNjns7kqhHn
	vn5wNeGNEP5G2pkgkDJHRzmI1sAn4l1RbUq0CB5GGFpzqSjx3aS6vKsdl46BcG5w6X3eQn033Gl
	pM4PSclpWBiqGGJnOEDWHUJXBp/w+KmOMaNwzLwnHNzep7/oqTKSYG3xC6vhkzEUGypsSuOtRyG
	6BqlTwrKBO5gjBq1XV+aNZNOdHAYtzzmPxHytYNOflkKuF7OkwPCndlKrKnkEPDSk6Xw/CNEG7Y
	++WgfxzmR90hmN8ktmpzG5AkHz8IAP+zG7kRXvwE=
X-Received: by 2002:a05:622a:4891:b0:4ee:1b36:b5c2 with SMTP id d75a77b69052e-4f1d05fda8cmr274645781cf.68.1766053662495;
        Thu, 18 Dec 2025 02:27:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGH8Xs99lwk0ln8Fhm8MT0KYk43fwblcEWogwddMnWX6PXNnrsr2mBiRPPS1m4a03lPfWrYtg==
X-Received: by 2002:a05:622a:4891:b0:4ee:1b36:b5c2 with SMTP id d75a77b69052e-4f1d05fda8cmr274645531cf.68.1766053662095;
        Thu, 18 Dec 2025 02:27:42 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:f231:224c:1d69:c0c1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432448ca8dbsm4192238f8f.0.2025.12.18.02.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 02:27:40 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        =?UTF-8?q?Levente=20R=C3=A9v=C3=A9sz?= <levente.revesz@eilabs.com>,
        Jan Remmet <j.remmet@phytec.de>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        linux-gpio@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        devicetree@vger.kernel.org, upstream@lists.phytec.de,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/3] gpio: pca953x: Add support for TCAL6408 TCAL6416
Date: Thu, 18 Dec 2025 11:27:35 +0100
Message-ID: <176605365223.36578.17805523730541624399.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251216-wip-jremmet-tcal6416rtw-v2-0-6516d98a9836@phytec.de>
References: <20251216-wip-jremmet-tcal6416rtw-v2-0-6516d98a9836@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA4NSBTYWx0ZWRfX44H7bbiCtqZ2
 7E6nmSbHxtx9q7uNEGTlGElZxf+N9saUI59LqAjc/rFZ4mhFSM2v1HWnRp3uYKvmHq7ElnCfEc1
 9AJf+tjKfEDXiRBxIzHr9Zu/02mYdwEonXfzxvMjDNw/YTahDi1tK3bvXiZL/rJWlf6X8mYWz8o
 YNfL3KTIJCzlZ1/gBmK8Hyoc85XNLm3NzfWo/CfoscQJTjqLmA3Fm0Ie2EaVTt8K5wOW22O9KM7
 EDIjgmxpxwLgQ17BFUhazDoJtB5TQMvzEzi0SxKHfvWLmTmsfURXmOwPSglSbbzEhTxfXz6aDiI
 1/ex4+NRnDr/isJP5VOODW8ZEB91oIc//KKSygxsWdFriH/vZtJmqlXWbP8GldUNxvgH/LIz3a6
 QVwQ5tL/6KkBmSFOTaOK9ZvRkAz7Rw==
X-Proofpoint-GUID: p_4rL-sAKh0funSjSwfJBERJvgUR0BLg
X-Proofpoint-ORIG-GUID: p_4rL-sAKh0funSjSwfJBERJvgUR0BLg
X-Authority-Analysis: v=2.4 cv=Zpjg6t7G c=1 sm=1 tr=0 ts=6943d71f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=N8dQhNKznRLd4DIZfUgA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180085


On Tue, 16 Dec 2025 08:39:32 +0100, Jan Remmet wrote:
> Add two compatible. They share register layout with nxp pcal6408 and
> pcal6416
> 
> 

Applied, thanks!

[1/3] Documentation: gpio: add TCAL6408 and TCAL6416
      commit: d19c36134fe14647873af5569329489502c174b9
[2/3] dt-bindings: gpio: gpio-pca95xx: Add tcal6408 and tcal6416
      commit: 9b5f506ff6c11e82574e7f6aa763c92ddb3afc57
[3/3] gpio: pca953x: Add support for TCAL6408 TCAL6416
      commit: a30a9cb9bca4296d25f253619883e7013b6be158

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

