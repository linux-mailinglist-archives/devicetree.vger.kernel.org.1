Return-Path: <devicetree+bounces-212642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69431B43614
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 10:40:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A6081888866
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 08:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F31592C17A3;
	Thu,  4 Sep 2025 08:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mRR9JaMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784792C032E
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 08:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756975243; cv=none; b=ITr0h00lrY5LGDf7iE7pcgJOw5BBD2de/zeuYoRGnTblUfwX3Rb491NElxeZ3jS35nk9yC/daopEeY9mYHs5wvJp3AB0OpsgsMt2F8Wqcf/g6Mh+kYpObFc0jqiKwkXbSJMY0VTtFp31TBTu+0qpXeThYHxilmGOPZqjox2l9nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756975243; c=relaxed/simple;
	bh=NkmDNo8VPDtMikBhpQmfI7PvvoyGiT1t1uBLOq/33TQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WMhQeS/P0Fp09o4zcNK60NGkrCeylB0ktdT+mdlsiiYI6o3GUMS2Rz/THvGaFtUHWPZlNVJb7P6hoJZEq28MqkTAbYp/8aT5ZhewgLYgNl9XqOS2YWDfkOQGYZF/dS+JYgnIshiv0sfv9K/x8383V/qJKnsLjqXgYo9w9szY42E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mRR9JaMu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5841OCV1019644
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 08:40:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I4P4Vpckc6QJ4OtjBhntsKaQJGflNRN1gBEgtyUv9mg=; b=mRR9JaMuBjiUkIC5
	iZv+AUF4xoQaK0bIgVVycAebuDTEGGDgdDyuqPmDKKLYYJ8B78r4q6ssMhNqnMPV
	2jYEFJPPg3LQ6ssw2So1aaI753Fwx+D/7ViUVzSTtCHOYbVbWn0BhcWDJAutNj+c
	ywOFwv/BkFGyoiTfMa/DtVhilXvtcF+gqkWgO+LpZH29LhsF2pOEc36CHwgozXcE
	tCQ9WDsm1O8u1+8ws28m6SQPQ6JB0qF0YfcmdsKVV+2V83au334aHNgepId9JerW
	af1krn3OwbAcdfftxQcTqpP/44LwfBJmUZW6BCi3oVLqPeMiLIhJiJGEzihdzVhW
	Fg4LUw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk96nyn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 08:40:41 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b3d3fc4657so1337401cf.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 01:40:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756975240; x=1757580040;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I4P4Vpckc6QJ4OtjBhntsKaQJGflNRN1gBEgtyUv9mg=;
        b=eQBscDxa3PHUDJuDl/ErvzFnMlqSOvEf+6FbxM1xB/nVta2FR9sr1+Tr7vq55ikBRl
         HTgu2E/KTrEOQLquAFDrZdtkAXVl7m/CxcnrsgYrbvdx4xomr7fx7hzHK7VdewjGEkjL
         S+AN8x+++vQXU9NQym8DD0Wb9XgHEVNkMJolNYUmQZ7PTo9vmYghtKI5YljN4yLdkLCH
         e1Wx9jDyjPnv63vQXnFW3NMP1U7sMZMEtIy+unx6/rrDm6cYrCarjzJNnRW1Be/yMq9f
         X7KGgAJKrjQu71/AK6Sy6eu/dMZPM1Go2C9g54RId15cEOKPZSIZsYj2y/QKDNctrcHZ
         SSkw==
X-Forwarded-Encrypted: i=1; AJvYcCX9VHEiAzCOViJdOcjMzaUHLSfKgwljTINyFajdwlOlw1WrZtJscQVF596XMSEiB5sGyzLqpg5FzUF6@vger.kernel.org
X-Gm-Message-State: AOJu0YxLiMPcE03/97koEwc7mGOY/H47pbsoX724zgr/C4yVFXpWHqFA
	2qNoYHO1jYvPnxtFnXGkBR0OdnDWUJCcthk6zvpjU2+xalufcu1JvjcZQMsnD2drCUAJekVooIw
	WjJDID7z5aZqP1eiYf82AElBMN9w0CTxGCD+zrS3OPEHOp3RFZ0LaLvo8IPFyls9O
X-Gm-Gg: ASbGncsXtewhEeuCMRTt6vSlOn6kmUQZ+ULEDYaiDexFAdDDYYwcC0N+xUYTxQ6dvTh
	n5MucGG2FBIXoVShDQjlBYwL4YFE06N3JJy2jt7ty0ODU0kRtUNR9sp6gRbWglG70hGt+g7so0/
	3NjbZxVhD3GDGgNyIA0NcHNCaTDypJDVC48wsvK6whdXZqjOklf1tYZFyLk5oAsXDdwK5ZB9sdK
	Ck2BaQCaTcJmq0dm80k8sUTyM+He9hfipZVowAZr+l5xkuYsr6Xq0CRcm6ZaBHEDL5g5SWRid+W
	w6GIcOJ5EG3Nz1J14cS+Ux+DGZ0s/9sl0Y49YcevELL6WhM4FABbMNJRlxGEDK/QWzB3tMF3jAc
	CE720rAbm9ZNhE8ZaUIROWw==
X-Received: by 2002:a05:622a:349:b0:4b3:d2c:f2a0 with SMTP id d75a77b69052e-4b30e9a9735mr176386761cf.11.1756975240408;
        Thu, 04 Sep 2025 01:40:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3LGMrSU/BytfgHKLmHyXhzao5cramuAbvzO2C5SkqEfzxhB2VBfo0CX0aTEn069I0+lokrA==
X-Received: by 2002:a05:622a:349:b0:4b3:d2c:f2a0 with SMTP id d75a77b69052e-4b30e9a9735mr176386541cf.11.1756975239917;
        Thu, 04 Sep 2025 01:40:39 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0431832a98sm886966366b.80.2025.09.04.01.40.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 01:40:39 -0700 (PDT)
Message-ID: <34d9e8eb-e0f4-47e9-a731-fe50e932fea1@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 10:40:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: Add missing TCSR refclk to the
 DP PHYs
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-3-d88c1b0cdc1b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-3-d88c1b0cdc1b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 8dkXH0hNv7mCCgKJj6LBwRsp5kF_cFoh
X-Proofpoint-ORIG-GUID: 8dkXH0hNv7mCCgKJj6LBwRsp5kF_cFoh
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b95089 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=LkxnY9FmGKG3Lg6D2dsA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfXzP8SOqnwWvjy
 gZ+vQ9PSYEMzl2k7Ka9TYKQOuZ9seSdgNoi2kiI7TX8MH2aiXIRkIkFkTxJtZWOy/X3gOdWtESa
 AIhYW9axiy6a+Px/OzKROEfrTSmtxP/v8WlX1fN0uzkgz3IKQMPwt5X3vFxEe1KebrJ716n3lcN
 B/VyzmV2cWfobpiVTd0/T+IhUsmBjOqXEjGl/BxR6wir2h7blJUqQmO7g7cfeDLGSGILJhbgA3f
 aO3n5Amg41ekjjixQi4rw7CddWq6OqtMvigO79u+Ok/PdcHF1M+JOn+8yjuf7HU3okAFwRA8XGD
 wyQU/Hva1UGlNmUp+nG8WKPwnFtxdzApra5FtsVlvpKeT6pK9J/7Iim+WsxYyXTBt+yoet8Ereq
 3U6EZVbV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

On 9/3/25 2:37 PM, Abel Vesa wrote:
> The DP PHYs on X1E80100 need the refclk which is provided
> by the TCSR CC. So add it to the PHYs.
> 
> Cc: stable@vger.kernel.org # v6.9

You want to backport this to 6.9, but you also want to backport
the driver patch to 6.10, "meh"

I'm not sure it makes sense to backport functionally, as this would
only exhibit issues if:

a) the UEFI did no work to enable the refclk
or:
b) unused cleanup would happen

but the board would not survive booting with b) in v6.9, at least
it wouldn't have display  - see Commit b60521eff227 ("clk: qcom:
gcc-x1e80100: Unregister GCC_GPU_CFG_AHB_CLK/GCC_DISP_XO_CLK")

and a) is not something we'd hit on any of the upstream-supported
targets

Konrad

