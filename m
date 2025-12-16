Return-Path: <devicetree+bounces-246991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDEFCC2D85
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:41:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D4C5530150F6
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:38:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2F9A345CC9;
	Tue, 16 Dec 2025 12:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hIFeGhm5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d2qo7NUU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9682D2483
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765886900; cv=none; b=f5SiCGLPPO0KoVTfA6hDrq0PrbNRugCU4W5liDGUYyqBakLc/SCyz9JQU3rXwMjLlh/I811NBhbKez6+dLWuj0S8wcL7w6GV5rUreWqCxM3DHF9p/ASUpUEQZwkAcYCarijHvSSAp1HYvOCp61KTJAoF/TxX/pH/QoKwF6W/8UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765886900; c=relaxed/simple;
	bh=8Vj/lMM9rhEx2syYcxszRhvNu3d6eckMlX+WyHRKVyY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cWd4DZejcE+mBeyPBPDRZjF+D/m3bUDJyHxAvEIMGtad09QVgqwaU/hOnbjf6sFLFbU/2N4S4q5RXKUEcP1Si1VecpoJlzaWwIoM0fdCUF2gXGG+SUA0HYV0ypOMqV/iqF28TuDKpnm1VdoAua1fe6dKekjm39y2QeZHYdJC3b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hIFeGhm5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d2qo7NUU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG9bnG12516448
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lTzQkBkSZVI
	P/qwZGUKXC1S8FfokCEt/lJKZp9k8Efw=; b=hIFeGhm5E5+7xdoZZMH6Vgoxb39
	9gMV2w2tLk5z5ULZWflEEYVi+Bmbvz5KT/1dqC45cDV3C3U7AQ7uXkrwGfwDqy7u
	L3yrhVDS+5JD97yxtYzed2DcHavROtSkSM26iPomr2zxqXjlbq+K6hyX314BOYWm
	8hE5IgRqJXdBoGSnVcSK+GjqLnj2fPqNneiFWVyozQBSknjOti9qOPdN87NZzrPN
	rp0vDhiuvEPFLAMjjPYpO/Mwzf6mN+JoYCBdZbWDZ3xfssOQPwGUYj+NL9Oh8GE5
	aVzYURinDFeScIz7Rojc25d4eedG5TgiOzfZUve/W7KB5KCmntS9Tp8rlZA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b34y80hx4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:08:18 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29f2b45ecffso59639295ad.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765886898; x=1766491698; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lTzQkBkSZVIP/qwZGUKXC1S8FfokCEt/lJKZp9k8Efw=;
        b=d2qo7NUUiKsgfPwkFy55tkcEYhFQ2TqR1yO83HJp6Amz56+t5GQU+NUot39RoG3OkR
         a17sX7fadEhqvLyPvd2/irw6JW2fkfjO8sWWW49BayxYQnaln6D1oYBc0jRrCWV8b/Q+
         XyMAc7ynzmolFmDfj3A2yH1tW+Us/+mz7wkqid6lY2jtVPEbTVjIxaz+g4qDEf5i8x6q
         54+KyM5pBU2X/o415ivocmn3KSX9LiWDOF+Job5sk9BEfxKfjOy6I/FftzznuIwhvJUx
         7l25mrN8H6kWG9ciQvJeGX3M1swCj4myjNrTcPOQf5ABsOHhVzUtI0O5cUWSpNwSIhDK
         oLgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765886898; x=1766491698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lTzQkBkSZVIP/qwZGUKXC1S8FfokCEt/lJKZp9k8Efw=;
        b=P7X44Si96gcvhXyjXIYWeDa6ecsbl68lWNZFNc/17RVwkceVSyXOLpWtw+1tFKioRY
         JDENgzBnZ/w5FNaTDg3m1OKbTg4b9/dODpNhfjU3McGZYY5MU5wYQokabOd3HsO/C2tb
         UKexHl0JQdbV7Smc9z8DhPYdhX01oG6fGfRfAJnAlESFQFYYA06PTU8bnKPmlcacePgP
         qJGF2tkFrn4rOaV4YlVrtXBHv+ZyLOCAUov+chlCy6tmRF+paErpT8Qbb4kkEQFEXdXl
         e71R4Y8oU74Frkd5td3EVoxvxZcar1f07WQ3faDA69K+JCle34Ojwo42WNw1SmmAnPcB
         LUaA==
X-Forwarded-Encrypted: i=1; AJvYcCUWT03B5xUX2enh6bCNHe6EdxAwODLFS1r3M2Hh4xrx1shf0vlf7v6tTHHyR0TYb+/nRiy1VMYNosQK@vger.kernel.org
X-Gm-Message-State: AOJu0YyQMNQpBuCigvxUFHUMTJwwiS8F6VYEebg1s7DIDyyCHH+tLND6
	jLn32pwlaFfvcHcQ+o0OdOSIhvEg5liHIskPo58jFpCPlQfKkCKQcA7aDjqVc5sYNVlpSKIzOlP
	IplZnPng+rYDgJtotk6PEP+jEweERyipwa3b/HmzLzNBqSV9sTZwlO3p8S0JP/V2a
X-Gm-Gg: AY/fxX6OhswhZmjq8MQ7RKYpqlJsZY826+H6HCZLnrlw3wnS0HMlM0o/2Nbp8rM1EUE
	+XGTphOYxmuUDb7sD0XQIohbOEu+kTsYj3xX2F/RExk2aUS0bGOmoSbvLAt5riH/F+FsXLFmKZZ
	zNkfo3EZwzjbtDQV12wmov2KeyVc7AoVv7dy+RL63aS7bGW/rSfHn/N+7VahvU79G4gVXZIZ/Hy
	zFHRhL10kWVKcrk0UDtiqAF8cwQQy+U/gbYqRnxdZsr2k6l5US67x63Fx+Xha1Aq2PPkPmuiYWe
	bE8C/4TwTZAHJTJyE9lpbClHgeJu7csF26yoSvhlZ3BvTuNnkgYQICEXACO6/n4zcc9NxGZ0HH/
	aZTg6XXIVLCYMFy2VYJwqZBhw+6f2K6bRP5RwZ9uMj4s=
X-Received: by 2002:a17:903:2311:b0:2a0:d5bf:b27c with SMTP id d9443c01a7336-2a0d5bfb42cmr87964425ad.45.1765886897099;
        Tue, 16 Dec 2025 04:08:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpxJUZqLq80Ian06AlRB70sn0PsrZjAaYypZVukvEG/E2eUbTL7qWkDQClYuQjzLYVeKTbvQ==
X-Received: by 2002:a17:903:2311:b0:2a0:d5bf:b27c with SMTP id d9443c01a7336-2a0d5bfb42cmr87963975ad.45.1765886896530;
        Tue, 16 Dec 2025 04:08:16 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a110f6374asm48568695ad.63.2025.12.16.04.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 04:08:15 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v2 1/4] dt-bindings: usb: Add binding for Genesys Logic GL3590 hub
Date: Tue, 16 Dec 2025 17:37:46 +0530
Message-Id: <20251216120749.94007-2-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216120749.94007-1-swati.agarwal@oss.qualcomm.com>
References: <20251216120749.94007-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=LrCfC3dc c=1 sm=1 tr=0 ts=69414bb2 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=yqrMnzDj37h-JzaF6bwA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: XmdE9TckZAp-v6c85lfJHIp4eMKBBGCX
X-Proofpoint-GUID: XmdE9TckZAp-v6c85lfJHIp4eMKBBGCX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwMyBTYWx0ZWRfX6N9PdCOEqN1+
 +jHgrBGhG/sAh6WjMv/c52TSuyx0ILA+vlC3cy8aEmMBeGTv4BHr3bhQWEMVcZU5u0T+QLYoGTd
 xnc9h6fwx8svz/tBCm+2lG4TVDTO7Xnr37U6Dq9MAzkhOlC0JMjHjKPJCoC36g1tIAFGIHE7AKX
 w0KXvpoeIzmyTClXg076LNP2+usDeEQ50mwekdcy0bp4o8dPZBeLZZPuDyJbdEq1Z3YaVVHq2Va
 5dyJ9XOGmaJ1YINrJE+t/gmSOuhhVunr5E5W5bOkfBmQuWuaO5vEeC1dJUs7mJA+mPQTPtoTEbT
 8HgmcGPnzpMzgjIVTPO3XeGm2XGhFX+58WPNw94XnQzupTmEwQ9JoIGkY2lws8Bx9sFEt7Efh1h
 QaillfaiHGgI5q4JCLcqKoe4H8Pj0w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160103

Add the binding for the USB3.2 Genesys Logic GL3590 hub.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/genesys,gl850g.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
index 9a94b2a74a1e..6665fc4baf61 100644
--- a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
+++ b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
@@ -15,6 +15,7 @@ properties:
       - usb5e3,608
       - usb5e3,610
       - usb5e3,620
+      - usb5e3,625
       - usb5e3,626
 
   reg: true
-- 
2.34.1


