Return-Path: <devicetree+bounces-221396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0E8B9F447
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:34:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 126707A47F6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51926261573;
	Thu, 25 Sep 2025 12:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VmGVRa9Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A859325FA05
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758803456; cv=none; b=XmTz89n10RDtoq0z/0Rm4JQN7ba7QQJ+K7pCKLghmXglh0NC6D8PRCYkbOPnVtSZZhenhYNDbYvL7VdrL9fFbwUcGH8ngGIqoqXVWhTzjGsxNBEMM21vNABSgvXEr7WuQQHU0LdLZYnBfyieOnTh0Wv/xoe39+zwGD/fmXfH4mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758803456; c=relaxed/simple;
	bh=7ew/W+Ffe0KBAYyes2vO95JQpX9yAe8JQiojzZrabPg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TZlSyWI2kQsa+19oFnU36KdwIGXJFaI4oIxfMZUWy2OREiAO9tm6Zs7U98k0qO1e46XaFMIOaKDE3Y1/Vz2kLbQB3WUxlrslKV0VK28FNmSLKt/jEU4m/iRMWgL6dKJ18m8JuRr05aFD9wl+dUxdQNCuZin3wH3I+ig6O8GxdLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VmGVRa9Z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9q3vx025366
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:30:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a2+3a6uGlyRN5xorj47QcSLNbjRjLn7ScwNgiGItbrU=; b=VmGVRa9ZMQGHh/qi
	OPIKsOoEpllEfHV0ggtrq/e5HN2FVto6jE+R3L0OnzVIq7u3WK+s/sJq7VDoaN8+
	TCW0BlzWoJFWpoTksr7OsDq6iOzbBsEY4Oa4JRSHn0O6LcYql58XrTYfVKPjEdOz
	5ZSzyXrlw7FQsBRTCPs0muhFo49uyhMQt4QPcdm0BjPR98nNPJMEDHhndOuHrSJc
	MgFjMhNsxfATVvGK+nKFjCK51g3HoBFvGNOX7c53Tq+pq7XINE7CYUFOLzM3dhtu
	YJWi3aq52Vre4vuTCVnG5qh4rJw55YIXr37+EcFYNaoa2wNiYMqkiRljbM2aVFfu
	JjEndQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyf0cv4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:30:54 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8572f379832so29766485a.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 05:30:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758803453; x=1759408253;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a2+3a6uGlyRN5xorj47QcSLNbjRjLn7ScwNgiGItbrU=;
        b=tOgQnAftsUbhnlIg0RoA9mc47vxdQUTS2BotH5Qg4DIN+zcu6h3JvAY6eqnnBktw+Q
         IfTcMe04OWFQY73oa84CF3lAAHpZE8qfKevvCtEg+SCMIGkS5xpX9ltSglUHla5BPRLo
         rpI2SYTpyQSOIO8q1AkH16tNrsx/wx7L4M5h1pOvdDJ2wmpd/gZIBFJOEyXu9cY5WbbH
         Sv1XktHODB0EhGG5v/pr/3zyBFhpkCE1imRijmMzwLBsk+ktyI7V67tPpJY32kiHtDkl
         vGp5ZlwTwauW49s/iR73EBZOFuUsUdFmCJBGeXS1RQHm6NT1+TY+YypB/OnvFt6QLn0N
         wwtA==
X-Forwarded-Encrypted: i=1; AJvYcCWhcEWwRBoSOPnDRfCM8ycmR/fSOJVmCWvRygl5xeXSfEmcAsyqg1TOg+vlPnt+0C+FE3ljV/Rfr6Ha@vger.kernel.org
X-Gm-Message-State: AOJu0Yzrgx/k506Wc46cnAqilyba/n+kbD001uHt6uOxZsBs5lwHgqt8
	MGl49QxzX/DtA64yVa7ICAtcgWb1t9XjTjEQzTougaQGY+XECNzom+79l7kMUHRDtHWiIiGlfAy
	RQD872d6g9F0w1gtBx5btV9qmKYNA9mITexxQnoN81KKvu323EQLLhnHLW+APxO4P
X-Gm-Gg: ASbGncuRQN3bSiQcJFX+Tsc834j+v+ird6juP7t7Xx5kId0WdjtPmpqDhxs43stXktv
	cBo+P63QIBlAmD6UyvmrYE1wWvZLQkRE+84yhnxvKBmxPKKITlB6A2Di/Hp1w6y149uVh5ljGdN
	Aknm2uzROSiNj76UL4XltZKAB99lhBvUfkzlhnc/v1LNoO7XeyHrj5Sj+/HFW+mqGqX6PVx7fJG
	la3ZGASnD5dykX9uK/HPZkGfxdzwm9MXV9j/Phhacl3OcV64YPBOL5Fl9BXLTBiHG4W8JfX5aIU
	QrwJ/pBgNzAvBIMNtRD+z+lNbsuzk696LfUPegLvRVkDgo0RnTSsMc0Y5eopDtt41lZedIOHATt
	dGihmp1409fRMREMvLYtahA==
X-Received: by 2002:ac8:5d08:0:b0:4d7:9039:2e87 with SMTP id d75a77b69052e-4da47c063ffmr29352301cf.1.1758803452587;
        Thu, 25 Sep 2025 05:30:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6EOmvQw8+zyiD5JPVWFExQhq7VAwgLKd4zuEmNy7aNwJAHke/OZ1IRA4eTgQWRp3Z0UmA9w==
X-Received: by 2002:ac8:5d08:0:b0:4d7:9039:2e87 with SMTP id d75a77b69052e-4da47c063ffmr29351821cf.1.1758803451871;
        Thu, 25 Sep 2025 05:30:51 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3af5721sm1121368a12.43.2025.09.25.05.30.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 05:30:51 -0700 (PDT)
Message-ID: <b25e5df1-8481-41fd-851c-5463389c0689@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 14:30:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/20] arm64: dts: qcom: kaanapali-mtp: Add audio support
 (WSA8845, WCD9395, DMIC)
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-18-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-18-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _1dcKdSFPEveiovqFm-miUiu4NV59R2R
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d535fe cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=3dHrxlFa4xLiy63zdp0A:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfXym3uT91YAHpM
 myeQ/9uTnIm2T6O/z5YJo8UtWHsYgUBM8FGUjwVoVvhyUQHFqygFW+cdMVr6x50hJtnSkMCrVHE
 aPvbjdizuyAyN9O/NFdNNQkXmXejFYApBAAsdwAnBSNYCFlIKPqTGWBmlRiaXHZmbrJiermnf9G
 Fu4/+AoYtUloLfwtaXshwUlrkOmlEVJQ46ltPnmTJzEtfBOeEy1Zl7PnkxU0FsEoNyKyMFTqvdp
 HToxZ3HiXgky2dWh9Z9VE5uRqRvCOmchXzSF4c9CsM8fyJwr/5z2utd5884wWaaFY+w7K0vrSWy
 6u/yknGGzya27k5+w/AEXCTRb+exFPgQV/9C2E8ip0TjE6T+vUaDPfKegA/ZjskfNUHa+xSUW9H
 woDE7PsW
X-Proofpoint-ORIG-GUID: _1dcKdSFPEveiovqFm-miUiu4NV59R2R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

On 9/25/25 2:17 AM, Jingyi Wang wrote:
> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> 
> Add support for audio on the Kaanapali MTP platform by introducing device
> tree nodes for WSA8845 smart speaker amplifier for playback, DMIC
> microphone for capture, and sound card routing. The WCD9395 codec is add
> to supply MIC-BIAS, for enabling onboard microphone capture.
> 
> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

