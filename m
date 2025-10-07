Return-Path: <devicetree+bounces-224181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 813E3BC1748
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 15:16:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 80C544F5EF8
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 13:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94F9D2E092A;
	Tue,  7 Oct 2025 13:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ItS18Olb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0293F2D9497
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 13:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759842969; cv=none; b=NHVF6zS243d670GH5AjL4/9WhBdzk+49jde4IWPdC5s9NQT2EJ6r1ldf1Ii+dMEW4KNGiQJ+alS2qCXuCbSYS7aT6ITkkEPjfMVN/lGrZuZtNrtnqI4BekVFC0EYmAByrai3r6l18WtPEjrw/ddbjkVNkBpne5joCTSZMyoHrGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759842969; c=relaxed/simple;
	bh=D3vC0/amDTtK5+1RhDAP72M4Lfvxbv46RZauQGSK73g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SwN/ny0Yy+SP1HrTGQSAuFJ8BsICnG9kdHJ6wl6T0M/Mj42VUy4GMiGYsVY8+OB51NRZOJjC+BlNXRnCx1bBnZGMcOBIEqIKs5UWcEYBsdvXSHTv4SltchTNrHApxUwAKix2xjFWyfuANRNENX6N1guGeQwjiESN3qAEyMzvDKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ItS18Olb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597Ckcb8004643
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 13:16:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9lQxVJqZ76V3LXvoCzGS4pSFF/q525kWkrJKuP9Z+Zk=; b=ItS18OlbznN65fqq
	cfEQQlOWFMoXdHypqQLJAEqB0qBtnYAfmguzpdCH4mcp0jWhDGjQOXHQPHwF4nU+
	OXiGpoCRkRiTCKsf01oXGvHkpEit9QMqtlkvutraRCM4CgulpAbHM0mw4VjbNHOu
	xARhJdOK6FkcdtfgeZC5ieGhVYZ1D9rbrr2vVrKDaiDKUEmB10AGk38q6UFOWTzy
	nS37JXHARkg/HceTCQc7t0cUohsapG6LlEgYzpFZcTEyEd1oVyDVfIKHFtYsH0R8
	KpvMqyo2b09tnudgilE1qCNUMKeUSRXg3EIgEfDSzz8q2ZN7O52a3UhySaQO3EI/
	iLC8/w==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jrxn7kjt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:16:06 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-54aa2355459so639924e0c.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 06:16:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759842966; x=1760447766;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9lQxVJqZ76V3LXvoCzGS4pSFF/q525kWkrJKuP9Z+Zk=;
        b=VH5exJzIuzVxSzXHT/xkuTmx6E8ovsIokYTnOYN14snAOmOd3UDiEL3Y8xZ2nGPWs9
         2Svb78gsVclJ8z7wxmd6nDatXcpn1L1hZ06rWv39mdqzMCNsrAytyKjX5B8jEQ34v6Yx
         y/IkrAANzn+n7FE1F9MroesE1X81MhI9sZc7Ql/XDDLRH/VNpP8SQ6+IvGTalEFoJZAP
         c/Cr22yafaP4f8L4uVjxMSGIf1gNkdbHAWII4lE0kq8WGi5Uys+b/DjX+/clYA6OmRyB
         o7M8fFAmx2AsZTI7NYPg2FWgo5UD8FEhvnPfQtb9KKQYwLOF73WV9WaIJ0xop4WmZJ+f
         mAcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlxYXGuXrlYRGA+HHf3ikh2/ozmEp++bMOnU+SnTaLvYjMVVQ+bJJU64xKckWf09r4XuLLp6/tZ76T@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2xcy75yWSygULmUVG+tAXIOusC0j/MhBqJmVJ6YWGfz6XVi36
	ozipTiCLLPFMhhmEKb7AOzVkxeO74gxTVoFfJMT3sL9a89+cydKTMCS3nxsTiG2cwLBjqBSAhlu
	R0lObUAZz3kjEepAYrh8XCyJXgQ19GXeXUI0kwH8u8r9ciLlD0VimTYrsdDqywEnx
X-Gm-Gg: ASbGnctR+h6MkffZDxVBWpYtCH2Z0QKSQYkTOmHYa4HmQjOiCrnsSVKRv+/aw998w7E
	M3Pr1Ot2KdEhVFs27hUlfyo3lqQZ2OAP/NJbMDGcTQpEIXr5cIQK/L24D8qb7QeOmu0vcjwigDU
	Rt3nzo3sWLnaEmsbL2m5AIr3wgcH/EJGXVIS2CnUCLgsv//qMaBmnNGesJYPp+mMtKYGFXLrwd5
	Hz6V0UH0PVRLYtk9g3LEz5+OjOb1xZ3ITDaTxVl4jpjeNQsEyuNjhRnYbP1KOgUJwWBzquOgQA5
	lKychxMEfCShTyWR4E39utfRpQ3edvzvEuAvWwIDogLKpvmR5zchQxcXJMiHB/cOeuAThrW59MG
	Oj2RwRgn/dzcRPVT5MS/nOgscBeE=
X-Received: by 2002:ac5:c0d0:0:b0:54a:9952:5572 with SMTP id 71dfb90a1353d-5524ea1456cmr1667130e0c.2.1759842965328;
        Tue, 07 Oct 2025 06:16:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCc0SPWEj1jSNBeOVABr/xb0UslG0Djb3P/yBaYz0NGqCuIh1r1LTgML2OmBHUgAZiBZDsQA==
X-Received: by 2002:ac5:c0d0:0:b0:54a:9952:5572 with SMTP id 71dfb90a1353d-5524ea1456cmr1667091e0c.2.1759842964699;
        Tue, 07 Oct 2025 06:16:04 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970b30asm1435265166b.59.2025.10.07.06.16.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 06:16:03 -0700 (PDT)
Message-ID: <335be224-88b9-4241-9e82-d7c03a4a0ed4@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 15:16:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: pmi8950: Add missing VADC channels
To: Antony Kurniawan Soemardi <linux@smankusors.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251004-fix-pmi8950-vadc-v1-0-3143ecab99e9@smankusors.com>
 <20251004-fix-pmi8950-vadc-v1-1-3143ecab99e9@smankusors.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251004-fix-pmi8950-vadc-v1-1-3143ecab99e9@smankusors.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwMSBTYWx0ZWRfX5BQWVRCUgs+8
 Axb2XdyNtoj8oHne4NLLVZLBi6yXyjkM7yBFwYhPf6sf14YOq7zQxfs6dPwdUM/JNyNfqKK/1pG
 EenEL4GPhV/7xHu9NhB5uqa1dd7/p5EabTsjt3y3A16FvisdnHYIT+/tif77+gGvl56LVBY6Vvj
 SAWiuZyIpT5TT8THZ12U8+OqgWAC5ZPPGP08xEkoAySSdXkvlA9QVxoFihHstup89c7vAv04PLc
 vVOsjZx8K3lp6SAcqgaPmjvu7yz6euuzSqPbBgtll4WyppQqttWp7h1KAc2oEmNah5e8ssJicq2
 grnuoHH+FnQxpwItKIwdrA3oZ3IBiDL4FXw4BLw4tJP03VYdoYBe6JHYDe0pWqn4Vtl3OnBupuj
 eKB4yjFV/e8quF7gI3nddzGt7RkIiA==
X-Proofpoint-GUID: sXUFzTMhIy8AJzBMOwFaw24IZjTWLXUW
X-Proofpoint-ORIG-GUID: sXUFzTMhIy8AJzBMOwFaw24IZjTWLXUW
X-Authority-Analysis: v=2.4 cv=EqnfbCcA c=1 sm=1 tr=0 ts=68e51296 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=wxLWbCv9AAAA:8 a=EUspDBNiAAAA:8
 a=-KJxd_0Hb4jBXpvf9vEA:9 a=QEXdDO2ut3YA:10 a=XD7yVLdPMpWraOa8Un9W:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040001

On 10/4/25 3:12 PM, Antony Kurniawan Soemardi wrote:
> When booting msm8953-based devices, the following kernel message
> appears:
> [ 13.090800] qcom-spmi-vadc 200f000.spmi:pmic@2:adc@3100: Please define VDD channel
> 
> It turns out the pmi8950 uses same VDD and GND channels as other
> Qualcomm's PMICs, so we can simply copy the channel definition from
> the other Qualcomm's PMIC dtsi.
> 
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

