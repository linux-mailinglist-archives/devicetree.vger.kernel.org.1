Return-Path: <devicetree+bounces-180078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3C0AC28DE
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:37:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A231A40DCB
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C771F298260;
	Fri, 23 May 2025 17:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MbRw3+qH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A98F298253
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748021849; cv=none; b=Vhv5eKqIlBNpPDpR195YIhqDhNte+7zuCq5EQQRTgcmM+ljPlyOc6yH/JPD0JLdtoJdyCrHXM+su1jP9hD3JV9ntM3+8OuZ7QlnfreZO4vkJDs6q4vFQ3vOHz1YjeSKCb0dvua3U9HmUrOCDveXN9u/B03faGxcTLhVh0zolqF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748021849; c=relaxed/simple;
	bh=03pShiNbAL8hdUAr6tcV+vAvJofXK7gi2r1TWKg8Nwc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GGl3e7qTJuYMZEf74h7skeLxGbtItKEAXQ7XkDUWhnNANP1SKWCW2AEMjoRds4Q8gn9pGkr8ShCGw3JxumSgIIZvOAVETQ1yqSGRbMQeKiYTtsOQvW6G1A5UrUmZX4NknpVTvhIKDVttYm2/WhgqIUIcGNoGs9Zd+HKn7Sbriw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MbRw3+qH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NCRVrO024764
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:37:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lJD2lVdig7BMAjKoIkIMyquN
	SchIwDTfIsQ6MPP8qcw=; b=MbRw3+qHJpJyHuLlezwbfpLjFQCKtkV3Sx6fdaVs
	X1hl+kNMeNE+H/v/ur9yOMwwLPI829F5MjfGhSVAlGLaQs/CWj/+fL2VtePJuI4c
	4aNwj+dOoatPGYJjtgpQ2pEeJHT+3DLh9inHxX7MU3wQL1EHhyMRaVESzm8KXw1a
	FrKSEcJiIGSNNE9cMsmM7cZVm9e7tRvMrZOAkBZeRNl+bcBH6vH/YQ3kRFjVRJN2
	1RhI49X1EfcSKFmyVwizM9ltyn2pkDyqTgkF5xvYDvuQfB/sdRF17SOFNZJ3mLg4
	2r5hELZc/x7GUM8rbDgHwOIrHfYt5MAlpU37iHmQzTNtNg==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf52pu7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:37:26 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-87be5305307so57114241.3
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:37:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748021844; x=1748626644;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJD2lVdig7BMAjKoIkIMyquNSchIwDTfIsQ6MPP8qcw=;
        b=Dziich13PL45YAOhYLqbfDAAt2rzBrMniC2DuJbBUYbShgMhuCIGKTHleiDnXPdew+
         6iwPytigNTLTHxqhzr2vtsGs6M10yJKiiWHS/iwx6iIVEeSi/wpK8XZq7roHber4rmda
         rvud8ygv8xDRclpdnt2V0/V7znLoyio96NA4ERqhsPaHNZLzZYrnJ9whFsZXo7idfDzU
         vTXd9t/KiyF4Tgmv/HPdl/F6y8ZVoN2Ds4HHKrmKGUNH7EddAxmaj8LnTHLFfC308Vuf
         JCHnLmV0cs05JDVKkDq0WNEs4Sthymx6vP9hQKIxLatLl6qweOns22/tFgXI88HLtExY
         mM6w==
X-Forwarded-Encrypted: i=1; AJvYcCV6pahibL5UBLaquFBlnZgLIP5RqbL6B/SMPNi82KniAxEK+007BQAsB5tbJrRpxCTbXKjYuUP9MGSZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxvRfKlYX3Qh0uo90eP1cXhOPlmX/PCMZpSjvw5nd6Cz66A8dvQ
	XLQtCrYAForCOsNmDVaw7XbZm+Y0vwCKNY5mf9WJekMYz8hpJ94fmXf2ANO80+3STK5jvLBCqN4
	CLWtV6on8/dVIWOiW+Q7y/EhYmtlepQnG8S5pRjDAN6VtVHL41fw3Q+B3ZPvb9quqc+PZGGlylN
	4=
X-Gm-Gg: ASbGncugk5wZtFiXu6x6jIdMbq61aAEveqGFcpt9aR/89g3MdgGcIIRqRauWxbseGGD
	sj+xuWIIeqXpzxF9RztkRYRJ+GJxPzGEv61lmH6BZ75ZDsjnh8czh/dC6UzhvEwaEnQNOSnPaEe
	fCNdXgVJi0LtWXB0tH7oTdqtt8tWYdhgdosUJ0UitQX++xpOclqCcSCGW5R41LppyQN/hDxcL+F
	vly9KBTz85YDv0hV0/+VZWDaiik/6TwPtiLlejo0WU3YBEZLnZPQGEIhrQcvMMXF0hDx5Fssev2
	qNEODh+ud1YckBqWViEH0gJmNu2wH6jiACq4wPsxGqSWDC6XDLDUjSWbQ4ce1WJHNkfpP/FoyYc
	=
X-Received: by 2002:a67:e70e:0:b0:4e2:baca:4adb with SMTP id ada2fe7eead31-4e4240c59c8mr483463137.13.1748021844620;
        Fri, 23 May 2025 10:37:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0EZu9lcZb+hOBPFTudkTJe6zE3Wo94qB00vk325UKK2EgDJLgfCJK+Y5h1ka3Bq7Givcqcg==
X-Received: by 2002:a05:6214:5c4:b0:6fa:9d5a:ae6e with SMTP id 6a1803df08f44-6fa9d5ab650mr1637906d6.6.1748021833528;
        Fri, 23 May 2025 10:37:13 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328085b908dsm38143901fa.72.2025.05.23.10.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 10:37:12 -0700 (PDT)
Date: Fri, 23 May 2025 20:37:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 10/10] arm64: dts: qcom: sm8650: Explicitly describe the
 IPA IMEM slice
Message-ID: <uj3w2kqaq6dri2nvl5be57hwe4sazlx4fhqrh7mcark4lltbqm@roalb3dmxg6q>
References: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
 <20250523-topic-ipa_mem_dts-v1-10-f7aa94fac1ab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523-topic-ipa_mem_dts-v1-10-f7aa94fac1ab@oss.qualcomm.com>
X-Proofpoint-GUID: MUBa2OojTUQBAiys4zMLldCaumIBKch5
X-Proofpoint-ORIG-GUID: MUBa2OojTUQBAiys4zMLldCaumIBKch5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2MSBTYWx0ZWRfX7u1eZzt5Gprc
 jJ/qHRjw5lJO1U17mGMjcw/cdRNUyhgSThiye8wJPzVAiB36YquGpQwF4wKdhoqJsfd3Y4ETPxI
 D+5k8sWvjocLCq6EaASTmECiDxfIIi8rnGihPBB773YRgv1EuPmfcrb0Uzn48CGB8UVBPn+8wVW
 L3Z2ASoVwlIoi4qgEc99dPr2bZXVSMjNt8KhiYmgld9xExjamyLyxEkr26Nn4FtwR6XBHqLejoN
 L2EJi33z6oMOc0NUkwnO7pdOtJiBw3n0ST6v39MomnTHUocqy6txVMb25Px3IjJ1fgptemB90v1
 4EN5vqvAE9w5u1fY9nNckYQwltf8pb3+f+5OOdSgF6mocPlSopNJ8NK4iNB8RD5QuGQ0hbCi/ET
 EzJ42hwdw9vZm0l/Cg3JzAGcalh7dm+KKf8z48GJh7eV21d5sovir8Qpp/Fn3A/8Ed7GkZFJ
X-Authority-Analysis: v=2.4 cv=R7UDGcRX c=1 sm=1 tr=0 ts=6830b257 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=CQVN2WYv2dQaG0RyAuwA:9 a=CjuIK1q_8ugA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 mlxlogscore=677 priorityscore=1501 spamscore=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 impostorscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505230161

On Fri, May 23, 2025 at 01:18:25AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> As part of stepping away from crazy hardcoding in the driver, move
> define the slice explicitly and pass it to the IPA node.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

