Return-Path: <devicetree+bounces-187981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9E8AE2075
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 18:57:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32B4D188B7A3
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 16:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EC2D2E7181;
	Fri, 20 Jun 2025 16:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oAfEnH0L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D28E2E6128
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 16:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750438642; cv=none; b=Ly57hxIKu2KD2ccNRzCDrOLM7Rygo7/RkQ2lY1kUyw6/FXdizF2VuPjDw/rIY/iGwcWvbejjKo6aFSjYEVMxqB1O1lOROeno7kBwT+7Vx9duqh49/ju03GJMOtasERNvgZp7l33m0L8cKs8YQnaXkMNe105OMqcXwhrNR7XNbOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750438642; c=relaxed/simple;
	bh=MTRrTMjk8gJcugrmcAJwb6WUoNgM0oitaPnoUyoLBzc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kja8gsChL5H9nkY6bv35Jw0sdEYUXNkJq1gFJ7IUk0ZZUvk0AY3VOm2yIzKOlz/hvkgI1/LPGvA64BbOhuHKuo+OXxfI7WHna5S0FiOjYXCMUZC8P72cP9vvzRJGCGrTKlHOfL6NTt2b6iYwmgWrNdly/J5OnZXXydW/ZfBfhAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oAfEnH0L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55K75VRu016711
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 16:57:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aH6iMtS8aVt02x/4hZJymbYmKZmSzX/zk1qluora9rA=; b=oAfEnH0LeNoYXcQg
	pwuWt1tSnKPkXXf4mHqj8b9TJ6Ohyu3Q5HWpqu4/l5sfVdYi8ZcqiWGhGqhWEi2X
	r6wl7sKefFcrg2/DVvRmqLKvuxJjmQryvzXjuWqE7BGa0V3nQBdlnobojfNhf17B
	dqC/FDBjSqqKq9ItL0Q4EeeOubnM9EP8vSz3DtEzWL19aXJ1WiuzsF32jaPk2Lar
	EdadcvY+jANazamAoA3jHCmKQzx2tgSOwXEZ4fVVAgVCs6gvF7SjkE9PokrO+maL
	ywHCBkRsDpWnIZ2St+vNFoslTt7DCdxAB0q4qacwtflCnpWs2DXmb0Bjb/5IBzwG
	AYtQFA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791cs3q44-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 16:57:19 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d0976a24ceso58528385a.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 09:57:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750438639; x=1751043439;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aH6iMtS8aVt02x/4hZJymbYmKZmSzX/zk1qluora9rA=;
        b=P5621VVoL09VCEEs/qAsGfcWkx4gPKyuNsH4ZMdmd6naoimuULxSG46gQ0d4ZgMOTK
         CshcKc6xVdw9yEuN31j2acG/jH8EKVrdmJnS7eN29WtYjDrj8B2xGiY9o4n04pJnGAID
         7pp572OVtXHcCBHELodYA2ns1+9hN9L9xJfPZSEoNfEvaHPKIK1riUZUtdP1SqfUkpon
         IyP0d45ybBIE6IR5g5PtYFMEplB6c+LpmfPbhb9HvnNIAYO2NPHTCg+nVrMOJH7+tnYn
         6vdmBi/WoDmC2wsxUgzBS7bVgpIr2sCBla/7pQkW9+DbzVPaa9le3MSfD4qbSa233ERw
         ituw==
X-Forwarded-Encrypted: i=1; AJvYcCXI74/CrWTSWSkKbMJyv9O+/mPxWFXcP//VjefYYylhwsgvK1DoeW90kyX43PU02FchlQE7jzsT/2cN@vger.kernel.org
X-Gm-Message-State: AOJu0YyEjI4UWlBciGQbhtirGSdz1It9wbqtdFMXqVG329mpcdMU+SwF
	yOIrzQJ2nZkJSOPXoeQs7KHJtTEzjd7emhl+j3QfrTqS5BxyJXKINwq1cw52Glxv5k+YOJL3ovL
	obROLvLeV+9L8iKBfvavTIh3bQmRpaZJjTVUgGEYIkURI3LiJS9ckVLN7St9boMsV
X-Gm-Gg: ASbGncuZzvBkYUWyGsCE9GgRCGpV3dPY5ngpAYsIqHjqkrplJt31H6B4FqWxSsv64h6
	oMFpk6pyODJVbk/BsQOhzJ//fdcDssYHCSYVMo3aMokJXcqaPtQezS+Io89vbEVP+0CWAyisZe5
	QuPJheXncgbGwqeAlZ9S32hibxDGmWfh+x2UC9Ow0OLGVDrPvexaW2lXT9ENivOptAOu5weCRGV
	fnkHtmM0AylUD9EpHISsBrXZZMJ4HKuppezrXQ5HWT8jcSeZqO1zKWgrg5CX35RZkc0mYuwMNuH
	3mJDe9zgw932Bed8+o57XF09gnh0PE7WsYkIiBA9/tuIVBUricPk9gh0WSNNQgYSRG8d+H82vdf
	plBQ=
X-Received: by 2002:a05:620a:448a:b0:7d0:aafd:fb7a with SMTP id af79cd13be357-7d3f98d9073mr176485885a.4.1750438639118;
        Fri, 20 Jun 2025 09:57:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpK+Z1a/STaxapcURqJfzeDBgLN77XcEzNViOUOIZ1OptR6KagVRbX/aeElcpv1q7LaDkYfQ==
X-Received: by 2002:a05:620a:448a:b0:7d0:aafd:fb7a with SMTP id af79cd13be357-7d3f98d9073mr176484185a.4.1750438638761;
        Fri, 20 Jun 2025 09:57:18 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b7242sm186984066b.118.2025.06.20.09.57.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 09:57:11 -0700 (PDT)
Message-ID: <d045d7c2-87c0-4f4e-a853-7a3a3c5f596e@oss.qualcomm.com>
Date: Fri, 20 Jun 2025 18:57:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/11] power: supply: qcom_smbx: respect battery
 charge-term-current-microamp
To: Casey Connolly <casey.connolly@linaro.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Kees Cook <kees@kernel.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        linux-hardening@vger.kernel.org
References: <20250619-smb2-smb5-support-v1-0-ac5dec51b6e1@linaro.org>
 <20250619-smb2-smb5-support-v1-6-ac5dec51b6e1@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250619-smb2-smb5-support-v1-6-ac5dec51b6e1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: i-nnDgPfGy6AbyOd-ftd0Ji4bFmCr-w9
X-Authority-Analysis: v=2.4 cv=BoedwZX5 c=1 sm=1 tr=0 ts=685592ef cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=PGWYFjC4ci8_ood58tIA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: i-nnDgPfGy6AbyOd-ftd0Ji4bFmCr-w9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDExOSBTYWx0ZWRfXyMOZX8j8pByA
 CEBWrmBSmw0jArhG9ez5TiSmPYq3CExscKpQvzHoUMO6rAfDSVO+MIPW0EAHvuE4KG/Olnlr2tc
 gBtWdaHiQ+wHyiIiz4ziRr6fjsWU/XTBJ8DtIAM1NSpOhkKpxkXTeUYP53CvlGLSiFOhzTwU+nH
 CdwOt4mqGNxnzIaxSbNE6FsZEJ1c7vZTUY5ucXh49PB/sNSTmxSvz0dd4lWWwA5qLPU9EgwqTxI
 BgFmJU/ZDmZWRBG21vcr47H6hPckK29CGbyKscnGUAOlvzGSLGn3/Hi0c4pFnePAV/IQL1PgqMX
 UoiUpX0FLDxKylBKSKVXeyU9OD5ohg07/GezrnUKwUZODDDv9gJ0bsz8AyZi1Jyy8gabbQfTzcl
 pzwECqhUC8u39H4IG7wzrkt8Jq8QSuvsvBAgHG8RAhq43ycf5aYLavUieI536RE/FCfFsacB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_07,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 mlxlogscore=773 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506200119

On 6/19/25 4:55 PM, Casey Connolly wrote:
> Respect the max current limit set on the battery node, one some devices
> this is set conservatively to avoid overheating since they only have a
> single charger IC (instead of two in parallel).
> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---

The subject references a different, similar-sounding property

The change looks ok

Konrad

