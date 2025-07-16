Return-Path: <devicetree+bounces-196940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF82EB079AA
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:24:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF9EE1680F4
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1375B2F6FA4;
	Wed, 16 Jul 2025 15:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mTl83bTp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2F82F5C4C
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752679289; cv=none; b=OaPP/CUXRUjk+8JhiAuoHMieQ/OSp4cHSkG58aHH4WVa0wAilgxUlJgmaXZIlmudV3COtVXbG8cPZvVfDB4k4+jF3CRebdZ7E0BOdn1zvNWGMe011byUa5peRbTjnkE3nRdQBEw6XWTNx9oM0ZQOOdoummYBJAwAnqsbyH12hMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752679289; c=relaxed/simple;
	bh=fqG7B+T81R/Frg225wIMjY4KZA4GxqPDhh4R3ITn1qA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gxbjgFyNOM9uo25DT8jMn+L7sMKOEL7DpeW1ZsnWCp+/eFXuNa+DpXCBL0ypyAx0HmQz3k10jGMm8KlcVFLy1HZhZ6DTcE9e6yVCr7AlqoDEIVcr62Hh5TN0po1D9S9rMV2QxZODznqZYtdD67hqSXCQzb0KPKyZrYybRSV59X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mTl83bTp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GC7jFA018978
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:21:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1bUnE3yh/20Ghd5aYHGrfLlbtIsqPiIKnsI6KRLyQjk=; b=mTl83bTptn7jOjj1
	YljHgzUQtkN3PYRa63msvRQktH3WO7HRs58VbyD+6CIPoFQShma+bof1Srfau1vh
	E8cTHyOcBLeOymJiZz9781O3UEo2D7Ffeo7xvJZuSWS5mztZ3XqPJn6kcxOWpEav
	ckPuTztKdhdPgmHhQhifhYsonxfr77owcXbMSJ3IYB6jtehRI1scdz3qf6DZY7Lp
	vECtjuj4n8irBB2TyadW0RaAIJ+XK1RsIh9FS0Q6RcMe/WTjIyoWVmBpE9mVIQxk
	s+eH7uDtwFIKzDKbF03szmSAMB2TG2UupsOLtPlLg/fAw4LGufiTwsxb1w6gzdRf
	efS8DQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47xbsq8nmx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:21:25 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7dea65840b8so57701485a.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:21:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752679285; x=1753284085;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1bUnE3yh/20Ghd5aYHGrfLlbtIsqPiIKnsI6KRLyQjk=;
        b=h58o6T7YMkBMFBZ6y+MYu9suAvx+oLtC9d0FsfsTS4o2shxGwHyMFH2nGcJvPDLdf0
         DP4LfQ8a3Z3v8XaAtfwLNKb5yCzpwLV/GvaWtAbcScAhaXSE3dBNa249hmSsQ3Esl/xt
         hUrMyE74rlPnxz8Lz9xcnyTo89JSgeUb9RfCC05ijh8VofAGrNbNrunt5Q/yaAx1sbC2
         Bo2UJ1jjo2MtCuGwupxYp3i1+s20AKeNXri9rRA9/cQ0uccNtzsBeuRI1fzi821GNdbb
         06m3yY2h3ZN0eA9W8PmmUTHnAeTlRk7L7J02yRfzSoF1mAxcXYwKXMClR84rbjWs/sIk
         Yb0w==
X-Forwarded-Encrypted: i=1; AJvYcCXyYtAwsppW/YhrsaFWxIMbVI7Bpizai0jWNwePoqo9Io8g+uIbvI6GwfFxkp6PaYbYuRmQSSiRFfqh@vger.kernel.org
X-Gm-Message-State: AOJu0YzBvliO8hAYKr8/9q5MZ3PloqKumWPRKI9pR93QY4bfJXQ49Fxc
	Txw6JY7QS81jsvGPaakOiV3iFexB4qZ/AFdUij8quISc4uLD6GUQPzfCIvMLS5ClDb1/8TEtV2g
	hxslQdPym1P3Jn/H2vf0H1g9SL7gu/ZJFdQIq/OT64EREuHKGueUtBkTiicc/7dy/
X-Gm-Gg: ASbGncvnn5tjN6YtFfQqy6+koDVhgJoidFywvaduTtFvdfxTXJll7R1WjkSqi7zaUD9
	xo+N5nGn4lTmAvzHehhzen4bskEKALZlD5igGF5o6Hja34RPq64Aejh4Wteks5MJ7IoduEoA9kI
	buLHg2tBvWysc39xtg427Wy1+4meCIJHhg11B6aYv3pMmIyNkUVLR/iLQhuAPwtDqdpieHyW2hC
	m8KAKbfEU/DxH8ISWZ9DMpMuDlg1qYyV+/RKIsl4Am7w8oyCW+91jkEyAZkib01QwSpx8mRNxMm
	mNJ8C9v3NI0Yl7NdqohYRnScYF+UbmkW5W8bNigiWCB6QRlHxAsRlDc+Zp4EK9WAQ2oKZMakFqJ
	LePZYz/nlCu5XqClKQYJm
X-Received: by 2002:a05:620a:1a27:b0:7df:d668:22ff with SMTP id af79cd13be357-7e342ab1936mr216253185a.4.1752679284859;
        Wed, 16 Jul 2025 08:21:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwUL4aOiOFKQWY6fr2mKEYH24z1mhZ4m8g2O2+qGwqBgjEmZmm+7igGSQAEYX3auu8FEpU1w==
X-Received: by 2002:a05:620a:1a27:b0:7df:d668:22ff with SMTP id af79cd13be357-7e342ab1936mr216250485a.4.1752679284383;
        Wed, 16 Jul 2025 08:21:24 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8291bbesm1194624366b.126.2025.07.16.08.21.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 08:21:23 -0700 (PDT)
Message-ID: <9075ba23-cf47-411a-a6a2-96f89114b14f@oss.qualcomm.com>
Date: Wed, 16 Jul 2025 17:21:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/5] misc: fastrpc: Remove kernel-side domain checks
 from capability ioctl
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Ling Xu <quic_lxu5@quicinc.com>
Cc: srini@kernel.org, amahesh@qti.qualcomm.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
        quic_kuiw@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20250716132836.1008119-1-quic_lxu5@quicinc.com>
 <20250716132836.1008119-4-quic_lxu5@quicinc.com>
 <aepmtv6mxlzhpncwcwlmgfrb3m2c4xe2edl4y5qsnjpxmvivla@gwufrh37y473>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aepmtv6mxlzhpncwcwlmgfrb3m2c4xe2edl4y5qsnjpxmvivla@gwufrh37y473>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ad1hnQot c=1 sm=1 tr=0 ts=6877c375 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=d1jN1tAPt5WcxSkl4i4A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: sqMNrh70K8-lfYPmCIIFTmwOVqTttH2J
X-Proofpoint-GUID: sqMNrh70K8-lfYPmCIIFTmwOVqTttH2J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzOCBTYWx0ZWRfXzFlOgPDPDZg+
 jeQcqNdqrTNbProbKWWd/ygRVTRUfWTPm51QnTNkGoHjKXlK6e8UGDn5NKX1ksRa/OjUu/dKqxD
 kC7Uq9yNbvO4SWGzWWLCBxQSr+S1XLG0gQCll9a8R9bPoRp52qaukFM9cmT/4vDrO03zV23idt8
 r109jcV0KoGwc/V1/YZHWYkJ77tLHmEsREMQJMwXHxsyL8D07zDOEC/y43tiWlnqWePzLQ/0tVr
 QQIannmRJslHyNXvueQLRau1AP13xdSdM/Upowsf0LX1E/oMEzXW/Pxr3Yk0LkvSYkYYk6+f5q9
 0DNWUZFE1hmsCD4d/+0N3DkGrw4LMlSEJtWXiRgvUhpx7slU342Q/0LmXBgSTk92WkOueoeQ4me
 ZtnAb1rjZEOU0vnyqsyhXZUdnPPUdmhG/6M0/7q1cTwt//vD6Bx4q1QASrn/IcKxOPeXkRxM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 mlxlogscore=743 suspectscore=0 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160138

On 7/16/25 5:00 PM, Dmitry Baryshkov wrote:
> On Wed, Jul 16, 2025 at 06:58:34PM +0530, Ling Xu wrote:
>> Domain ID in the uAPI is misleading. Remove checks and log messages
>> related to 'domain' field in capability structure. Update UAPI to
>> mark the field as unused.
>>
>> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
>> ---
>>  drivers/misc/fastrpc.c      | 14 +-------------
>>  include/uapi/misc/fastrpc.h |  2 +-
>>  2 files changed, 2 insertions(+), 14 deletions(-)
>>
> 

Dmitry, your message is missing

Konrad

