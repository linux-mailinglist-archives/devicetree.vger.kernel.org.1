Return-Path: <devicetree+bounces-247315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E42FECC6C6F
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:23:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0EBDE30447B1
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30A533A9EB;
	Wed, 17 Dec 2025 09:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DrbrJrYB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jTKfENxQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5FE3246F5
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765963368; cv=none; b=DPm0HrJd/m/bEGrjXwyN/uSYVXhdxf99sE8ffxcTrzzpoaSARu4Cz2wl4+gAy1DHxMmZPbiNeJvk6+VaiooMyvgXpari6R5XtA2DvIsJ8ELYSqerAV74NWdt8dSmkjvNMQUdln4hz6Zb1y1ydHuOfBBuYvTE2DipRMlGUJLGw2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765963368; c=relaxed/simple;
	bh=bbLTpYgmBbOjMFOHzeQR8F+QdZGouqymC4TiXpvn/50=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TaM/J7bdY7AfLoOlDtUPqT4WcCbW8nA7/h3SqZ9KGcG/COK6kIyx5nGjq20K1YlMY7Oes9sClLk4i0jJL0eDyk69nr73bFkDCsKY0RIbVnbdd06tYJjQYNwafCPeexXaiCuTgeOR1DG4j1begmV9KSZXnm8OKtW67I0vF8JXUxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DrbrJrYB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jTKfENxQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH86LvJ1946237
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:22:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O1NeNX279JdFE7q7QJbtFEwg7PguF0oSBvL+VDxy4RI=; b=DrbrJrYBRXrneJ3r
	x3s7eiNZOfsRm2KraHwWCXB+BVsPGIkFtKkXD8c6Ziqq/FFz+l/FUUNPnFgAUNu0
	qfnVZGvekn6FWDn11E7RibHic+0BD97g3wWO4Ms6vYKSTGiS5Dbdle9uRwzFRGVk
	ROR/47pjtm1vJ/G4UNFsM9DfFNZzU+YtfNX8CmMpyRZse4LmYXRSsEFRDYh1i8M3
	spdBmM+fqwZtsbaC/lPjB+aMHgppsY4/v00EYaHfcPm5AKkbcAu9+bJ2sO4AuNa4
	daFqbYOd7Sgmehl1VoHo39v4WEDDOBHTmdEBrjd7JSR5nPzOermdvwV4dLiK/LU0
	cm08Pg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3rqa88h7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:22:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edb6a94873so102303921cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 01:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765963365; x=1766568165; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O1NeNX279JdFE7q7QJbtFEwg7PguF0oSBvL+VDxy4RI=;
        b=jTKfENxQzEr4HOBhVNjMShdDD43eQtxLnud9kb571cFdwhjjUmgvXNAUWhS/gbgzKC
         UpwUORQbPLItR1fp1uz/86/kcVJQyNKwdVEMUbVTlvmnyn1AmZxT+cSCfqs05bLuXuac
         /RsuM81OQUMjXbmnF9/sLILslxPJAIrWyNnhkOTiBrl9jmxcrQ8MlyMW5AlYROUufLh+
         lnQoNyi1o2SlFh2+cGYlhpCtqGNLgbrwzK70nlMLwI98IwzC5k53E/kaYvUMvtUDdioN
         RoMG8q47Ob5pEoKbc4PyR1PDiIWjurrEHtCAazNXp5uMkrFIjlkhK/ddDb36uht0z5pK
         2Y7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765963365; x=1766568165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O1NeNX279JdFE7q7QJbtFEwg7PguF0oSBvL+VDxy4RI=;
        b=srTLaJH6nW2JxCdA30W/2Eq9i7htUzpDgjDAqP5gO2iVNyMnuZkDgvx64nxbjA1uoO
         Ou0sU/SUDqma2DkIGWSwWVZ+WsvvtZoiAJKaV4qF1ACrHPPILw8u8XjCTI/AP2HGAPgq
         N8KJqC5ILSszZcGvCnKpKjUEacSwrJD0+EBDVpYW96lYcnE4ofsb2HlmXpjokVOxrxtX
         exgoMqs+9TVo3rMdPWtyHspXeHQGWCKYfz2xmvuahMUe93djLZipMJMDLdCqeretdXaq
         o2sY4ocaJSf2Yqs3QDTHlQsTCGUT8OIWIZWqtUCbvxoKVLJhrMY79bPiqp1tjHcDFxsk
         ZmfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHu9g9eJTAMwLBQ0tCcbh6Ki9AW8IC+3B1HroGmnKkQapoTKdN+fHwV090wNPdMFOcXFg9PcaTGMXk@vger.kernel.org
X-Gm-Message-State: AOJu0YwkDv9hbHVYXbCa+8xtqURQJxHAswWn1gd2dIkunNkud7GJUjw0
	eRwACIDuxYIB9QYfVPGs/7S4oOISyJO6rbVSickm4xiYMrI1Vuy/S/qej+hMBk2OgmK91mG+7el
	PwVI+Vq1ZdsrjcJk+rRPB1Uz3Ndbk6kSrxYwKt1OP2c6PlzkoWAoeJNpwn940x4hR
X-Gm-Gg: AY/fxX4zm7jTolVT9bL7ZB6ZWSxcDWU0MdO0DWn2kTfnJjz7BQn6gkXHIJ6/CaJZjj3
	8nmHfhOM5rCzyCLxa9yGntV9UHpO67PFXoOc7sNsBPw6q5vhN93aQX/5xT3BNlVRoyOFiB3KuNC
	hxqyEwsCPjju1DvRQVxzeLrQFPy/eX6gbgrQcdEynC26UuC8rtCpZHzRZywfj44yEgFk+0X4gZ9
	bFsLAFnH7P77RAM6M7M2PI86uz1nIIRw5afxvdetomz2lQdsYSu9n6pKBX0iPRG4n4UE3z9uzCU
	vvaoTVw74d+lLdNGyiw0iZykfX9aORP9rbCmbvtp1TVuGOi9tngrNWnjOexKbJAhXCkr4iBk2Zl
	9G2ezkiptSVLSgmocqfFaqMjOfKnnPihjuhSY
X-Received: by 2002:a05:622a:5c92:b0:4ee:ce1:ed8a with SMTP id d75a77b69052e-4f1d0467092mr292274521cf.16.1765963364333;
        Wed, 17 Dec 2025 01:22:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHVBSY9HrSb1eG5s6bXREmAEodgYzRbN7yCm6OS3ggMYrPH6PAG+bx1I0UwAuuLj2N34mfyKA==
X-Received: by 2002:a05:622a:5c92:b0:4ee:ce1:ed8a with SMTP id d75a77b69052e-4f1d0467092mr292274271cf.16.1765963363886;
        Wed, 17 Dec 2025 01:22:43 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:594b:272:c2fd:21e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310ade7bf9sm3806668f8f.24.2025.12.17.01.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 01:22:43 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: heiko@sntech.de, FUKAUMI Naoki <naoki@radxa.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        brgl@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dsimic@manjaro.org, didi.debian@cknow.org,
        wens@kernel.org, nicolas.frattaroli@collabora.com,
        detlev.casanova@collabora.com, stephen@radxa.com,
        sebastian.reichel@collabora.com, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: (subset) [RESEND PATCH 0/3] Add Belling EEPROMs found in Radxa boards
Date: Wed, 17 Dec 2025 10:22:37 +0100
Message-ID: <176596335025.7296.12753500067667593056.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251202084941.1785-1-naoki@radxa.com>
References: <20251202084941.1785-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: mdW3RKcUkHG_nTDscgqEJZHXm9QSKXup
X-Authority-Analysis: v=2.4 cv=ALq93nRn c=1 sm=1 tr=0 ts=69427666 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=x5VBOJNiEakZfNYY35cA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA3NCBTYWx0ZWRfXzSClmTqQjI8m
 n7n6AxGs//uIoFXJanHiYJxHNKtr/HakVqATDHB25Dv8bVZPWeqaayH5fytgDVZlp/RenExUu1B
 TJta3MiAHP+PoVXqvd4L0ZdWUql3tjsOmD4Jv5TZfeRRwNKtU9zFCpzp3vkwmfnQPWYETJk9dCA
 UYoq/f27piRJDIV1SDlRVxDMdppSMID6x9/ifyqU6NpoZU+q1rv1AR3EAQHlqR6TZp2+uZSLqZn
 WyQTgtSJ8hi+ypGwjNC67hZ4TqWySfdhz6ISshUe+e/cpFRtGIFFEaKxumcNqSbYQc/tZOr9wK9
 Ry07j4LeCUQIij9/qNvv20Q+VZYo2Y251Xr5J8RTIdbQwiI3/YobJITK5TgryTNIDH8b6csdiN/
 eZH6gJJFYe+IVBRm7wEfoEs2/GUqpQ==
X-Proofpoint-GUID: mdW3RKcUkHG_nTDscgqEJZHXm9QSKXup
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170074


On Tue, 02 Dec 2025 08:49:38 +0000, FUKAUMI Naoki wrote:
> This patch series adds Belling BL24C04A, BL24C16A, and BL24C16F EEPROM
> found in Radxa boards.
> 
> FUKAUMI Naoki (3):
>   dt-bindings: eeprom: at24: Add compatible for Belling
>     BL24C04A/BL24C16F
>   arm64: dts: rockchip: Add EEPROMs for Radxa ROCK 4 boards
>   arm64: dts: rockchip: Add EEPROMs for Radxa boards
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: eeprom: at24: Add compatible for Belling BL24C04A/BL24C16F
      commit: 41acc4dd8a04af332416b59a4cdb4780b7716ff1

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

