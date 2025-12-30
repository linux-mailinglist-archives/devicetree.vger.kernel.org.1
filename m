Return-Path: <devicetree+bounces-250546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 740FECE9E38
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:12:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67A42302D924
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE90248F73;
	Tue, 30 Dec 2025 14:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c5CqhybS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J907+xMy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712FB1DDC2B
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767103929; cv=none; b=Lo5sCyLlITalEF1oHfIiQsHQAVeCqsH2L/CfohYpFr7b9xWClBMreng+5/KtC7iqEbkWiWtK7rJQWqGhWpfkjVL3K0weuUT2A2hctgr04CuNPlZeWSdM7Mi95imje7ncW/y6Uek8h/Sd9BqHQWDimSvxroR0U1SPBvmBs4epEo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767103929; c=relaxed/simple;
	bh=HalORjCi33QNYWGs58aPCOmGJRqijxJwJRs2c65YiPk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IwZQwpvtzLhUUBqAs8UHdxLQ1tBVL+blNAGf9+w+dUT2yvAK/Ts/k13hhmhYzAEfZ06bERon9VsZ+Rb3wE3HfB4I5TeuWET05KPboLY8MNQs2k9pwW1xq81WdgUyxOHYGrfkpqPnX2RtDxvzTrEp4QUz5BjigZSdHIcOHFKc2VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c5CqhybS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J907+xMy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU9ijeO2874108
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:12:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gOS/6+DACahWk4IG+foy9m4YTOOq38wbloAXw4QG9DQ=; b=c5CqhybSYs4lu27D
	BL0ATI7xRfF5THO9eETo0uIn9M9+EHPhSRv+15qAisAZ7XVA/CiHc83nJO7+Lx//
	iB0qS8uMeOh+ffFPrZg60+13q4/1eoLvol17wW6n/k8XVWxxqdJNgFQJKyMisOy2
	xezZsjQY6Ycu4d4fF+yzEBWBeilpf+9RE3NrNXKzY1tAV5Qlt9LhMPILXqveGujR
	ngzLKPJOn37ks6UWPg3NfH0e29mQqOR/CO36cH9bXDHL+/nvdNgbj2NRjm7Fv6gS
	XnP79OQfo0wQBOOzFOaT6m6t4Xy5HsFx1WWXhAhyO4Xu1b7HBIrg1fKTv1Bh1vq0
	XQC89g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0vdj21r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:12:07 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee07f794fcso39763601cf.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 06:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767103926; x=1767708726; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gOS/6+DACahWk4IG+foy9m4YTOOq38wbloAXw4QG9DQ=;
        b=J907+xMyYJqu0YvFAgF2LFOO+CdwnuIkcOR8bfQ+7QpHwavyViU2S8kwPvH4yaFEk+
         NbSpcmoImtkyMUw/PnzGp8y/fa9BtTvsw00Ap+WkCUjUjGpxOYkPs/ks8OAf9vIPSiuI
         mhqsSFUhbuS73CpTUHkNcJMDlufmibBXkl4n7cwaw0Q6DvzSu4top74k8cH3Wd6FzWbX
         qpBptsf0O3AMzLQgnyb1XlaTUCRb4lCAcFRkexOzseARPp9m9iFB42ktooxGn8xqGlyZ
         g2hGOu6TQ5vKeoBjvwIL0oFrTNwj5rtzVqX5PO9tbqzyF0tfiVXeP5XYNWNJYz754g7k
         UFHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767103926; x=1767708726;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gOS/6+DACahWk4IG+foy9m4YTOOq38wbloAXw4QG9DQ=;
        b=TJ3Q28I42Jbl5r2DgjX/Y7Uh+fDeng+p1fd/8+W1TrXiECWRtXRAtY1cGQ+lxKLcyl
         cfgX1YMyfPIqYuBc1fFt4nf4VLQvIDtJK0V0WZ0k3jjnNu2w1ilAiOz+5kwWiHpA2Y/f
         SaxvmYUJV1+DwcEuNtABvw5U6QbOkC1UU2ORn3CUd+NFJA8vqg6cqksi978bJccszvAi
         YLmQ/2N++x4rN7BcnscdF0+KoLJgOMw8VADtWpLDKE2FICr2N5yHpvlqu6vClDuEz9Aq
         YF/43KWjdtWT5wyiX1yJZZ5EhB0MDmC5uhcB35fzDnH5rBPanzeQC+zI7Qvs81RglAdX
         3BOw==
X-Forwarded-Encrypted: i=1; AJvYcCX8GT/2xYP0D6clgTbEIgns9/L324Lj3SllwnMCixAewvOM4E05FYhDwSV4YUWtmb+B0ryh5cpWEghS@vger.kernel.org
X-Gm-Message-State: AOJu0YzLznCaTbJlrB94uK6dDGgf/KxhFmuSeMI2S07dLM850Mx1uKkI
	3F5AgSO5OjEiraXIHeolj3fNNc3EWhqCnDLvtvHn4OrFtoqoSRRg6ugqGs/N7HD9Rx1D8igCwlY
	O0mgqkmtmHDXbywyH2DAzVbdy01U82INHxQ/L+Rng0OZ569tzxxisz6JhBnKzqC1N
X-Gm-Gg: AY/fxX5QQo+qQt80EL61fDDBme8KM9IZSYkg/0l3Op8hzunPRYpZ4SGwzaXmXZ1mWBr
	chcDUGCXXbMoke/+PcItCmWeQrxkJaM95C2pNJfAxB3Qd5Ofxe0ciGmk7fUSsDmw27b7RJWOFu0
	kyzAn1qEiaVaSPEq8RlmLpKkb1FvqCBt2JtCIF66QdnqoM+Qk/BPFeQ4XNXcaNjQhp2GtNybglF
	JSGx1D5dkgr0VK5nDCDKS6rdcrVnO5J5LmlwzwRneou5IHmhOeDZjQ7rgtjeytOZJsuN0+zlCsg
	rWop+o7RANX5nNPkijhj4mDbmeGbZhP4sNlkXo7BPneDqPbV31jUBFnnmawK66NXmdSelM/L7pP
	eM3vrK30mxnWamK67jTiKqxwGZrl0G1Tf2ZAyMDxmBodMXH8vr7eiuUsht815Ty7+Xw==
X-Received: by 2002:ac8:5a81:0:b0:4f0:299b:c785 with SMTP id d75a77b69052e-4f4abe04451mr344777911cf.11.1767103926421;
        Tue, 30 Dec 2025 06:12:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHjqp9PxLRQ/4vjh1lhSfvZgUJ/bKmJeLnU3Q+HtKB9o/HKRUhKyUByzv3/wHYsWz7jfIc6Dg==
X-Received: by 2002:ac8:5a81:0:b0:4f0:299b:c785 with SMTP id d75a77b69052e-4f4abe04451mr344777461cf.11.1767103925985;
        Tue, 30 Dec 2025 06:12:05 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b830b5fe8cfsm2133862566b.59.2025.12.30.06.12.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 06:12:05 -0800 (PST)
Message-ID: <0d3e5f9e-b9ba-4c2d-940b-de25ca8fb208@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 15:12:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/4] arm64: dts: qcom: qcs9100-ride: Enable Adreno 663
 GPU
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251230-a663-gpu-support-v9-0-186722e25387@oss.qualcomm.com>
 <20251230-a663-gpu-support-v9-4-186722e25387@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251230-a663-gpu-support-v9-4-186722e25387@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dfONHHXe c=1 sm=1 tr=0 ts=6953ddb7 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=be7_MNJoD_q9xFtD3CEA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDEyOCBTYWx0ZWRfX9PHYBuw6WtbA
 QcOHcJwBhzCbXYrlUxRkrJKk3K1Eh2PtWWkCuE8TD3g9u89MbB4ticlEiZoVo4NQRzwnlBZvL4o
 dcAXWJCWXe7dRaPs7AvFInC/DL+qtO/K8oxhFcO0aicBDoQEGc/wSf7w1xe3LUyPxxYEtUmxA7a
 0aS4DiWxlYjg6L/PBy0o5PwrgVA3+Ahqqk5EOfc+7afH8zRP4HP+sscO65lj8xzB1wwwiuRFard
 bppzxi0068OZ4vtkRedDopy2EEBbmhwolihrthq7IzgWZZlemy13kM5Hfc/0wvFGVclRk599be2
 5HJSOHVXYk2aEdMZ9C1hTos1qjdFvrOHfqw9/luTBJEgLifW6quscfbaAGqMCM28gZ7lJYWIv8C
 SS+G9aQREPfhmlMuPi0mAgSuBLG3JMJrYSu7ZSnsFHoe7cHYdyk1BEIbVQXZM1EZ4cD91ep42eo
 feTXACZRze+s0t1+gIA==
X-Proofpoint-GUID: 1NrJoSl4I4_6C7_ENc6NWXJNv8vh3zFT
X-Proofpoint-ORIG-GUID: 1NrJoSl4I4_6C7_ENc6NWXJNv8vh3zFT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300128

On 12/30/25 1:33 PM, Akhil P Oommen wrote:
> Enable GPU on both qcs9100-ride platforms and provide the path
> for zap shader.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

