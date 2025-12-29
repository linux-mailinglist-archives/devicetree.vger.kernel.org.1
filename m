Return-Path: <devicetree+bounces-250210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E5886CE6D5A
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 14:10:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E4E723002A71
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EFA231353D;
	Mon, 29 Dec 2025 13:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ArypPUYP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ca3p8/8l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B427731354A
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767013802; cv=none; b=bpkU1/SAKVfPQRv4Yb0/fQJ0rWY0K5nSjudC4qQ5YnePQ3HIkZyCzoJSSdM/Y9apHmNKpCwcCKhY/eBUkVwZ8+A0lT7ZLM1VIHwgd/4VWOQhtERqh8sV2zSjoLIUcK95louFzg0LyFZJl2x8f+iGwFNN66rKBhkk0ZSqUcNYcJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767013802; c=relaxed/simple;
	bh=uzRIwvYsnyggvosgt2+KHtoM9B0+eZ6xtRrRv4Y3FcI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W2r7ESLhVjBh+C4GnbhOIC7286aLYJnBv1rTYF55YMedH7aMxezjkhycRF58lU/6msteW2LQ0V/bvq05cDgBgSbwfRnafSh9gxAd4Pq+SlnvNMfUG2O+MhRAkijplc0+LB0Kx0TnWO95Z2wHvDKXNDqbCT4zvGBm+n8n0oy5EDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ArypPUYP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ca3p8/8l; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAftSB129763
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:09:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1U2KevJnmKY84jN42Ic3+RugWNFdMyVeLE8MTpZ9s20=; b=ArypPUYPJymm+FeX
	ot84me93MTAVg0bKv0v3vYkVHfj1gkXhfUKwsWvlQq5eSRNrhxjjcoDKX0d4uYv6
	0XgmH6kvZ5R6VvWD77hqN1upOfmXBd0BjkvdOH1b9zA1x+GEqgiC9FLLIfuZ+sn3
	gf8dE+cduWrd6TiEKIWoyiY0yjYWKnV9ge2t4HG4Eu3MFF/lcgsh7Cgx4LeF4408
	OcrqSh2kvP0G7xNiPnrJnKwGUYfxuJ8DBzSa31qQqtQhtmwaUElEJX+ARk3xF3wy
	Y2bekP7sy1WNziNqamVG2WAfoWyuD7NeQlMtdBX9kYduQnOhsdc9jAJCyY9Lc7EM
	B6a74Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba7u5mbmh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:09:59 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee05927208so40841521cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 05:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767013799; x=1767618599; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1U2KevJnmKY84jN42Ic3+RugWNFdMyVeLE8MTpZ9s20=;
        b=Ca3p8/8lbi5K79oY1HMum42fRDJxq3w3+ExdDtYZmkq8O7DkZ0LI8Yw8LBVa4ZS8iC
         Op/qADKnYCr2sVdX9jhc7CzacIPIHQ6NwLwdLCfe+FUWhksWTVQET5UckKAMMHeqxiaN
         Y90Xot2SmYuvjj95FGZ9MRv0DGR7n934onB+IufwuTjS37KmWgdDHCgWBhpwsbkt99DT
         IXRYXqS1UnXkVDEUghBmbsGU6Mawu6ZEApIQpyIVZbSbeyPg2HVdhjkC4dqwfzEmnxiI
         IGihnKSfKBztDSwxtMMfem3Hpwy8bMneZrB/H3QlYKPPWKqsXqWNrKm3blvJy3kPaT6W
         BypQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767013799; x=1767618599;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1U2KevJnmKY84jN42Ic3+RugWNFdMyVeLE8MTpZ9s20=;
        b=ODiOCKh2sPvuQTTCS1R1dNgPHNI3jlZcCoKdwelSIJrwHyF+OeNkG+xYPnOCUXr4Cj
         bQTJX22ytX5BuVGYqUI5hY/KXNGmnoXyA7Ara+OXYiyKxEPHicKv+x/OMLtfx0C99KFA
         R/K4UoZqrDWIF8Qpea7GuqltOIju51tdvNNARvfI6XAttmY+aGLO/WdZmU+LfVAvVOkp
         xBo6zq+5psGxo6ma9KHWthSlJdhc9HGA35eZ8xJ70Vt8v2zt5L1sDRHYkM0pPD0Ia+qD
         mJ4oRxkgdWDdJQ0psR0SCOj3uVUwogEpNy1HFU9BeEaoCvC5iWzY5KBpr6WudyoI+MDY
         4MSw==
X-Forwarded-Encrypted: i=1; AJvYcCV9/MXyc7yvVnD3MsmUzbMM1lx7cc/sxV5X3n+N4zt48Afhs+maIX+PgZvOrWUgLPec6M2p8+T/E0rC@vger.kernel.org
X-Gm-Message-State: AOJu0YzGNqmajm80fdmmNdR5cXPVSqOeVVDrXrj++3/tsDSmJdWowSKb
	2gH8X6rClef6io8RTqRN4iN9feF51sm9H3R/Tta4wbB3y1bvh2tn9W0RoxuvuVFUus/m2SAuu5/
	OeE0wD0PN8/YeSnaJswB6XqwjElYJkUzIrNHMP/DJyFwlnQF21eOPz07TiMjPJi9Y
X-Gm-Gg: AY/fxX4FbIulzUi8b7q28KHyCBKXYvu5ssQWzlq9REDokYp4HXsgZ/cLELTqFBWmRzV
	va0RF8Wky1adlok/HMCHJq2ulGqp/uBah5BjThVOe6of4dEjxVfCT9BZSsTehCDr8tkgg7ZH//P
	uirbmR+x4eSUsnqsHxuOzPbNdKOzx7H2IJRy/WzB1pVKyR+MQv35ZDkFNSE0rRN2sv7qJJpghVv
	utts3D1dKtLAIVth/Qk3VPXX/lZbmNKEAaPeOQOowtUlwroDG+cpRnndNreYFiGf65aj4FHrz5Q
	jSvTRkJYY6t1RCf+17DEKd84RPTICItiBYOI1tTkUuliATSF8ALuT5xx8/CWKeJHdW7MrPBThbQ
	DtdwKdLj6n/zEtNSsd1/mtN86IIKfw6Uj3OOlwXxbcY7pM9ZAclFcn76PeORscODIhw==
X-Received: by 2002:ac8:5891:0:b0:4f1:840a:c90f with SMTP id d75a77b69052e-4f4abccd72amr343273741cf.2.1767013799166;
        Mon, 29 Dec 2025 05:09:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFeFn+ULom0MaqOFCpJdzSzf47AT9NbQIchSG4rj+Gfty0bp0BAWaFjA8ywPw14vBH4HYDXuQ==
X-Received: by 2002:ac8:5891:0:b0:4f1:840a:c90f with SMTP id d75a77b69052e-4f4abccd72amr343273221cf.2.1767013798757;
        Mon, 29 Dec 2025 05:09:58 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b91494c0esm31675297a12.20.2025.12.29.05.09.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 05:09:57 -0800 (PST)
Message-ID: <47cfbdbe-1b73-4fbb-aa55-fd1b29ddbb18@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 14:09:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/5] arm64: dts: qcom: monaco-evk-camera: Add DT
 overlay
To: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
        catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ravi Shankar <quic_rshankar@quicinc.com>,
        Vishal Verma <quic_vishverm@quicinc.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20251222095914.1995041-1-quic_nihalkum@quicinc.com>
 <20251222095914.1995041-6-quic_nihalkum@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251222095914.1995041-6-quic_nihalkum@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: n7kL6onj9Ru-9-28UKLKqlHVUFkogclq
X-Proofpoint-ORIG-GUID: n7kL6onj9Ru-9-28UKLKqlHVUFkogclq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDEyMiBTYWx0ZWRfX0c3jnRYeWx8z
 fJ+KGP2PkeHDsQnbRWdVfClkbNe4JSVWU5YbUzXV66axQG2Yl+dgSudzko68hEVVgTGFc+qKxyo
 LZ+E0a8FwJToZ7SlPovSTSZ9SnLk49D2l+ficl85yNk76UnQFWf+ulaD5Y0tbgimGmibvur6PiA
 C5tJaNfwhC9f+za9EOuwKA3tVc0gMrhOHJonPvREooKlI1C9wA5zKCQOLmompK+ex5qFegG/Y8a
 7cjivnt+1cPhPc9pB3Ympk3fSFfxui5gFaWeYhkThQA60tIyPe/3pQbkhgBJhaTl7C2YyCFKwff
 zLadyw2iKq220+qEycN7DqgSxkiQOK9gRqAwkqvC8WtuZE1GIgFuuiroVY8+/6HN+l5Sqc5qNii
 55r+WSl3hTe2zPbhzjeLW1sPsbipsyo+GWKggm7tgWBd4dMwSKmsEchMBlKopGwOxHFFZjjk28v
 sAuLUEa0edvtNh5TKnw==
X-Authority-Analysis: v=2.4 cv=DptbOW/+ c=1 sm=1 tr=0 ts=69527da7 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=dh2O1nY2NKEWDLYW15gA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290122

On 12/22/25 10:59 AM, Nihal Kumar Gupta wrote:
> Monaco EVK board does not include a camera sensor in its default hardware
> configuration. Introducing a device tree overlay to support optional
> integration of the IMX577 sensor via CSIPHY1.
> 
> Camera reset is handled through an I2C expander, and power is enabled
> via TLMM GPIO74.
> 
> An example media-ctl pipeline for the imx577 is:
> 
> media-ctl --reset
> media-ctl -V '"imx577 3-001a":0[fmt:SRGGB10/4056x3040 field:none]'
> media-ctl -V '"msm_csiphy1":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_csid0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -V '"msm_vfe0_rdi0":0[fmt:SRGGB10/4056x3040]'
> media-ctl -l '"msm_csiphy1":1->"msm_csid0":0[1]'
> media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
> yavta -B capture-mplane -c -I -n 5 -f SRGGB10P -s 4056x3040 -F /dev/video1
> 
> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> Co-developed-by: Ravi Shankar <quic_rshankar@quicinc.com>
> Signed-off-by: Ravi Shankar <quic_rshankar@quicinc.com>
> Co-developed-by: Vishal Verma <quic_vishverm@quicinc.com>
> Signed-off-by: Vishal Verma <quic_vishverm@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

