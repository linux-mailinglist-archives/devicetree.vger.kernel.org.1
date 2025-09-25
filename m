Return-Path: <devicetree+bounces-221320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7C6B9E7A9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:45:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D35C37B8B88
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF45C2EA729;
	Thu, 25 Sep 2025 09:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BQVuRwxR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252CD2E9756
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758793501; cv=none; b=h5xW7z4TcqpvwJmYm02qKY6ONuaKwW2Ei0mC7NF9cKyS73iovaCn2UzqsKn2hpb3LsqWFgZoq0afGZgUsoad767phS0Efj5jjdNFbhanz84WSCNdQ0MiRlrvEXt8TWZHfBo1sHXgXxXCF9EsgZfxaApAWYPljXH2WQMBiAyXkjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758793501; c=relaxed/simple;
	bh=ddDJ8WhOB803sw1GS46pySj8WpA15wcm9XtdsSV5R8Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qyq19AJHuv/69HuL3h+ARi9x3Pnm1XBDY4CRK/ts0BGmH4QnTJAzJ3VtsNDB3iQeoxsDHq9RDgMluEM8zP0ALL5u9t3PsfUYDVhlq2QanVDl+PhDSXPdcgUVUbeBeHPUnAZ4thwWhtQLapONs2yBCmx+gFgPA3XAlsBK47s4m70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BQVuRwxR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9C8Sw018070
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:44:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NikL2akQ68hM9x9+VetR4PdPN49gGnpQhrngMFrdspQ=; b=BQVuRwxR2YoyFFps
	4Y4Z/Urhjm3dggVs5w5V6EHhY+jyBAglFiXJUhIlgzkS822fTnjA1w3khwM7rrAg
	QokpBXoUDX63Tk8gS89VqafD5Dq8AN8G5XJfZ/MBlQSOJAK7JIVuaAEcr8m1v4K9
	h8YuMZMEoX/QPE5Eoi/HkuzU11E0zOKcpsJQi566TLnQLfdnaGboT8Jv+nU38FS1
	SOn4PhHp5onM7qztmEpxf9fqVriJvWfK5Rj8VD24O3MllcTPEpO/1/Gu5s2WRaJr
	+2P3oj4g8k9JcpI/yqx4dN8yAynPPrb7Oufinxa3TetJbyIr2/F+6CcFnzc6mNwW
	PbglKw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kkbk3e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:44:58 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-85e95d986e2so1185185a.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:44:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758793497; x=1759398297;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NikL2akQ68hM9x9+VetR4PdPN49gGnpQhrngMFrdspQ=;
        b=asUvLSiFifMh720zXcU0atDnPy1lwC3HUAoU7xezbk8XSjeVGDlVos2qsSx4lkSb8P
         6ZfI72+tIOyCvBYAvsq0d3wDToFJ39gZRf4cACxm6VOrOLmYfmGIAS3pNU7QIH7tIVZu
         xInUOs9JWZltkzNx31dxfuA7CuKciq+BHjMEMZkzGqwKRi6ZIJYcB/CjWyirTEZYv0sH
         E9tRn7ZnskaoT1x7kgEj3QGu/koO7z6vO8Ut4M06Bf9R5gdCyKTHc9kiEmYDaVqroFEC
         2pWSycRdBHCiphLJEiIQpQPql3W0en2nOM3ofkwxY1WN5gmGj7aC6busNwa7MVXObtd5
         zSBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyKTxzY4unsInZLxCCp5a+PCcsAMjDCyINreR+GpmYiqaRBignAN8yp+fRjw3jEaODewKaIqA1IPOO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb/xxxVBX/OgmFDZYBJ1SlNtYBnsNvQ3t8nws+hprqezWSXpJy
	+vEf7GkIhXKTs+43WRjrdIVha0ZNal88vdrDnDuJ2mekxQl4o44nnpdTJiKeDoIWxvh6ydJnB/h
	NQ3BMW+jwHbBGm+EZGVGNxtKjWM8KDgrL2JCVqwspEDTmk6tkMCDJGPFvdulBKf+h
X-Gm-Gg: ASbGncsFppaVdxbp0smGCMKb045mE2NNwnTx336W4Etz9WtKVlgR1mRpXs3YC90gJkz
	rG5bHtzBSjXY8JI4TziijVJ8vrT9sNwr/DsLVebrT2PObu/8vRKv4tkjvQf0mAK1IJVaDZLMCZv
	GSAz9XrbkYYfYx0MvyIa3HCimpARYxBt2av7orEkeBupQghbVCFcZ0lHFMa0udtn+CxRBPLFG1X
	NDVuuU9r7REOnI8eE8LA+vNabx18gIZjJqX4lC+innzkwMLcftXbetLOHxyqw1g+ewAVbJNd5W6
	1UbNB517RKGry60qTNoL9agRYShYjF0ncR6SBMEmkhotmE1Aq/8Yxp55RlkEhE6eNqM9LywB6LZ
	LSPYttZJ/9a7Uy8G0azEsdA==
X-Received: by 2002:a05:620a:568c:b0:85b:27dd:84cc with SMTP id af79cd13be357-85b27eccea2mr163415885a.5.1758793497210;
        Thu, 25 Sep 2025 02:44:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPPxZLLNWBTCD5r+mWJbKzzYp43QUCoEx4ni8RhFH2hQfUjAzXM9z/WGLeyICmCEIzVqFcFQ==
X-Received: by 2002:a05:620a:568c:b0:85b:27dd:84cc with SMTP id af79cd13be357-85b27eccea2mr163414085a.5.1758793496657;
        Thu, 25 Sep 2025 02:44:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35446f5c36sm130884366b.54.2025.09.25.02.44.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 02:44:56 -0700 (PDT)
Message-ID: <f647523a-d8b1-4bd7-af44-1893ed7aafb1@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:44:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/20] arm64: dts: qcom: kaanapali: Add base MTP board
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-3-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-3-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: UMIBWLKHEx6qTbWLZWER8Eg1I81GDpFH
X-Proofpoint-ORIG-GUID: UMIBWLKHEx6qTbWLZWER8Eg1I81GDpFH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX/LC9RxjH/3nr
 d1wQ/cU7lTnba0Q32O/mPzvb0wrb20ovtx6xv/+lI2NytEByaPwmUe5j5zFHc2fLqAwt7qcmJJ3
 cG/jxwKndA9cxvyqQbOHyb380oKZ83yGJ0HCl2dnSA0Kk+/G4gjRYt+FsUr8eNNg7DVFQwP901V
 J0yQv0YD0Tpj2LiXNsKf57HbN+1O3QUDPHpu4pyYQYiNixBTi02OehQNcZkhIyx5cN9LO+Pp4+Y
 2Lk6K9k8R0pOTutO9kYwHrnBQnCKZ8TESzC6b1wXVTYgd3yZOGsNih7Z5Hf4p4XOG5yy0kiSaQp
 GvPmD/Htmk1ea3HBkhHAJVF0XqyX6R4CQo5RDcUxAz3lU3WXv9vwixJ5uv//AZGg5XKeYXeSF2v
 DzHUA2DE
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d50f1a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=mBYT-LOj6LCiw4TiknMA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

On 9/25/25 2:17 AM, Jingyi Wang wrote:
> Add initial support for Qualcomm Kaanapali MTP board which enables DSPs,
> UFS and booting to shell with uart console.
> 
> Written with help from Jishnu Prakash (added rpmhpd nodes) and Nitin Rawat
> (added ufs).
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

With the commit message fixed:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


