Return-Path: <devicetree+bounces-256773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C70D3A489
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:15:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 41A4E30060E4
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:15:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1C6427F724;
	Mon, 19 Jan 2026 10:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ft7GmItb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EazLslB4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6062117A2F0
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768817742; cv=none; b=dLFSYDUPk5C9wFD+waSJ4HcqS5hUgvndjv3mUTgRM40ZXSmM6nJwVMNjc8MxhNg6qm4ITQNvCdFWFJbvKDZyGUGJiUjdjDuSlEQTBF7g4sm8Jr63T2BACpItfyUtTOf1zx2gvf8vpgtuh6v2LxoXbIQmTTpuJEF1RYbKgVqkMPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768817742; c=relaxed/simple;
	bh=M8vmGrv1KiCcDm+3p8w+eSt3k6pyTrlsyhN3Ww/++yk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IZnZ3N7ZqQuovpz0eOxp8IrFkyqPw6658R3c+tDMpn9nSgQdaz5TlejPun9lTsNVClKzFkAJ41FJezKBqVDiWshX5OQ6HA/zQ//5KtmX2bv/MFjg5zBXcWc7Dtt02j3j6quKwCoV7DVUWeJgfsx1Wx9+4pV4ICjZdPXXiB1AbyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ft7GmItb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EazLslB4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J91LP41354167
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:15:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dk6p4tDuo2SuuKCuh4Z0JrgDUUEQWrTdte7wbwvhXDY=; b=ft7GmItbyrSZs8h2
	xc981bLKxdyzan+xhms98N1rHZ3yDIX7polQP8LaAuegUoAEHUZHNuhM+Ny7YQUZ
	nEcrojkM+ka9pOiXyQwiZ/wc7XhgmBYJvaV3ln5lWX5VGp6RWisNoV408hjR00y0
	TpGyp8RbboU38ttdlyj5GM+2OiA2qFIzYF8gwMX539luntGnYdto1/sO3ios0qft
	sVEgTgcf+mxXgGFZf6QH/h4q8k4nA6nN307umhs7+Ue6DgZiHJHxjoZdJKjWCXUy
	uL5WZdin8GJg3Qla+GA2Khz2YgCLAGj/1BQQ0I5aRDxvwcbjbso4eqqqfxmo4CSY
	JF7U6g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br1cqcvdb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:15:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6b20137a6so472159685a.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768817740; x=1769422540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dk6p4tDuo2SuuKCuh4Z0JrgDUUEQWrTdte7wbwvhXDY=;
        b=EazLslB4lAnSq48yir9e69lHo9R8U7zqcRzlurZsca1D8t/4RKIwgvTs4a0zyO85qN
         AzhhqWXxZGEBOt5XjkzOJIR2Z8uMvZHR+GIay5U5F388C+XHzOsHOkrz0SXacx9VDeSJ
         vzRrnAl3n1VcMIz7YP+e+f8+bspHvTPMwZsudzKA8uNydfC6Cbls7iUbfgRo+Hzyikg3
         SqnwKoN72o/p1elmpeyMfdb1RirUh5spWguE7YRcrgZRaVU1XetEn/yPjMIW/VVaXBAM
         Xdu3OXH6dUsDDu5dxQaMAsss8JXYHZrF61WwCsCJEAkxHufGlj5Eitk1Dn76qDxxiR0d
         UXkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768817740; x=1769422540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Dk6p4tDuo2SuuKCuh4Z0JrgDUUEQWrTdte7wbwvhXDY=;
        b=ibxKqfKKKoABjobCeSEYT+ADOA+bNeXyQAJSvAeQlqEyep5od53kFt8LMvOVLcsFv+
         HHAvqtuc6ckQCmAt21F0q+rMYy376lP4qGI7UHpN6zDQ+XdLL2RuFEZCuj9/D6ZMcggd
         Ot11LZsk78WaYwUV/m0igQdXSidmIqg4TtTZGKIMf94JvZq/WagAF2W/MXadHuFRa6TT
         e6HrliI6JDXCAJ2OXxUSHgoPA17o4DIROwpStlwsr1FmC0vO5YCB8WzVCpFHXZIz3KjE
         Ks4jimr8vnMYVriwt+rhzHa5KqhM01rQvDe3KWxyJLjAHr2Rw9BBoaVmqFgda6kNX4y4
         RQJw==
X-Forwarded-Encrypted: i=1; AJvYcCWaHPOvrwlkU70LE06DUqltlnBgGMq931e1EuFzlifaBIn8TPHZp8U3u3/aud8toS9yNAkp1jn4Oo5e@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+/gPGGCYlEMYs6kJD21/B2SXKWSAKzFmzOnxWbxmV2B0XXea/
	vE+QUkoPOfOvYcpqA6NQJF2uz4AK1/vQiJWjqsFoO4y4+x98UYcWU5Ip+BTuGpK+fZ3hIQb2HJK
	DqdWUQPpoUIk/BMxWEZXdCrHS1k7POtdx1dVon9TkQ8FM1fHofDUYmox1ngwGb4Ce
X-Gm-Gg: AY/fxX5TdrrJDt7Ha0weLdDUvvX/GvyQ3jmlpZ9U7H3T/LKLXoBI8NPh4xo+k6K+k1Y
	G+XhLpxTF1cBgmNUeFfdZDXP+9FKHQH4ckfg3cfGvdhCoSdPk2lFz8ED6J4KPG9rZGrwJXK6vg1
	9tjOYJ73dz7sFN5s1pDzqSOebGmOmr3ZBoFgHG+kE32wvOrgeMd6CmhxJrEIH/Jt4NOXCNf3/1L
	SE/Sut5LYsmGmn2p8psPIST/TOG96w9jdH0EZb8Vt7OuaPhMRY37A7qoEZEf70BrkxnXXkuGEDn
	Mo1faDrLcb5qMduoTOxoYr1nxAIW7g+8kKyaChDlo4IbycEZdpfcaJGaUE/aCf18sUwJ2UCCyPb
	7h9H6NZnkJX52jswrRGVPG+u/49JAA9OhV03DTg==
X-Received: by 2002:a05:620a:31a0:b0:827:1bda:ca68 with SMTP id af79cd13be357-8c6a6768546mr1388580485a.46.1768817739590;
        Mon, 19 Jan 2026 02:15:39 -0800 (PST)
X-Received: by 2002:a05:620a:31a0:b0:827:1bda:ca68 with SMTP id af79cd13be357-8c6a6768546mr1388576885a.46.1768817739091;
        Mon, 19 Jan 2026 02:15:39 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:4f55:d102:7129:1a8f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921facsm21220514f8f.5.2026.01.19.02.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 02:15:38 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: (subset) [PATCH 1/4] dt-bindings: eeprom: at24: Add compatible for Puya P24C128F
Date: Mon, 19 Jan 2026 11:15:36 +0100
Message-ID: <176881773405.15929.11747885724390635318.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260116-milos-cci-v1-1-28e01128da9c@fairphone.com>
References: <20260116-milos-cci-v1-0-28e01128da9c@fairphone.com> <20260116-milos-cci-v1-1-28e01128da9c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: AZJj9YhtFPlCzrielVZvtM4NXopwX60Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA4NCBTYWx0ZWRfX+3cC8ul+qcOG
 yPvAj8ciSy9rC80orm1jU8RpBaMdfZpmFS51742fc1IF2wYQpi4WVBGlDsMyfDT62km3UpQkgMB
 PXFbUSaM/H/w7V51+c2rLlLVhvcFYr5eH7DJUDfnkj104sHo3iXCo6KxbZU1n7aVFpmZBbvv/4m
 lXLI97jQsptsrD0jYL3L2dk4RFCm+wiqJte1l9BzefQdSLtLXKFuNYTNmxgZAqH1/egIQhJ2LmP
 zBS5fjNThWbjxCLSQuXnKoPAMnO9muvmhk0xcRXMRDw0UPZJCMcFcnaW1S8/lADCPGJqyOE1V6V
 kfgrSEB+NgW2RgqCnXpOpwihiG8EVuY4AC7yVvi8cQ3osiGg60gAYOdE2+bk4ioP5T2LfHVLbjS
 bkzmoc//2K6GGe7HrDkkAI7Dg2jXTZ3V0m+teo6Uttquh4DyWPa1W2qUKs+KZGyS4kNGKYq3Z5u
 +w+FFaezTnVAOelA9Vg==
X-Proofpoint-ORIG-GUID: AZJj9YhtFPlCzrielVZvtM4NXopwX60Y
X-Authority-Analysis: v=2.4 cv=NfbrFmD4 c=1 sm=1 tr=0 ts=696e044c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=d49ADMIpjG4RuIGA6bcA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190084


On Fri, 16 Jan 2026 14:38:55 +0100, Luca Weiss wrote:
> Add the compatible for an 128Kb EEPROM from Puya.
> 
> 

Applied, thanks!

[1/4] dt-bindings: eeprom: at24: Add compatible for Puya P24C128F
      commit: c6e79d34bf80c008e5f5fba2c8cce3df81a84335

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

