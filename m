Return-Path: <devicetree+bounces-167212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 03584A89A89
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:43:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 440FB18919E3
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E41C128BA89;
	Tue, 15 Apr 2025 10:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RLkBCV1F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709EE28B50F
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744713783; cv=none; b=OqMAl3YFT4Lw0vr22lN89+ergo3vVTuy7p5tSrJ0U5pdTexZxDgP/DlR1Y3hUDbNgzy8aGQUqXj/LvcbPFmm9UeI2grs/WHSZm6SYj1AeaFnNwpHFdJClT75SG79RDciO33UI1LgoYsPBltkkzcKmzlhREKjrVPa0yWwaGL3upU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744713783; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vl8ayzDE+TqD68TONABeGxMtsnsZM+Do6rilsmgkwCT/NNsJvsryc9Rj87btFfT/yuGjZynUGOhfZukrCLUtjsH4geia1OHzdvyvrbS9l9mnybwH8DmELYtxZWCDUio4wit5Qz2tPTCzxukgZqw2NS7Zjec79pK8Kot7Te9efdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RLkBCV1F; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tF5F018871
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:43:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=RLkBCV1Fp6cGjJ9U
	GlzbAlhqKuQQrDaiRctaxMdzItFD+AjKd2BLsSCnKxozMMztzVo/uBntR9KwGMxH
	mu6jUe4Io2iYg0ZU8tQ6FhYyMKBVCWb7YzBFu0T0dGhcAchM5tH8/EbHAbizxxMx
	dYAEYgafUSuaNOdvON12op3FrweWLLq+FuTK/iBHGYNxtNnTstIE/4aQoLabru9r
	ebzOkanpw3N0ZL0/w0VxkRbJ+OUCbDzcHxHXSYkXw3Enk9XC2bPtci3+t2g3THed
	sakPmeMd+0ZSTXEtz1gkyDhwrRNdx7nWD8L4ho/yGMbTp/3wmDl6ElX0WQy6Ww9l
	+XsDOg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfgjfp7m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:43:01 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5530c2e01so64437185a.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:43:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744713780; x=1745318580;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=Rof5dCjuJBsgnUWXYmd6CgeTfi+VMYbWrsi/P68xr/ZcIxBgU5crdaYdQLBmnCY2AI
         wobat8GHNeFpMI5WA45c8bM74sGy1NujlE2vB8h2Jfck+1gPUj/groOvOyfjRijUQHgX
         LDr7TTewH1eB4Jwk1f509xIl++zvxmFBT2Fe16PzdrkEoVddDZEnltir+l63C219F0Sp
         XQImNTlyQ4es5scYwpr6o4MuiGLZxP5qVQ+UWclrypNCRYbqvtSyr7TcqWKgGxDBEQAW
         Umfe3rx61Jv+Pc8AIlCK6VZT7DZzbtyCMghMboEhszY0tu3snrqQGQKoeZNy9LB/pIwJ
         Zvzg==
X-Forwarded-Encrypted: i=1; AJvYcCXmJ4Ftsai9awa82SSAXOwq+Ysa50cAUL9AHjn6NG/IKjQtpZh8QgQo7E1ldZaiNu5ppNndRhVt7X6N@vger.kernel.org
X-Gm-Message-State: AOJu0YxiN6UlZJn0Wb+JfZfQXOc5T8LNJcjfVqz1YVIGUGW3vZLmWcpi
	z6Ry9HZhiZxHGSv9CZf6Mwt54EL1sHajEzZVpSfeTMP9KTMXvPG9Lhi7K7vuVdaR3L59/mAJPSz
	3OF0sHin0OJgtVBNzqs3urFFv2aW0Z5eCwmaLkTBcnpzxGkFkA5sFX0LKTW/o
X-Gm-Gg: ASbGncte2mT3ZdNwBN4WLC/R8VHX6S4N6lnj9iBu0VZbfe38QXKPxwcFdncTVtcfO6W
	Z0+9zXYiyh+4K8ghZNzclcqCKx03r+/vTUh7aRK1Lfaui+ep/DtMIKd8jzQho+ql+hromBQp6E/
	I+OsoJZh6jBKRIEQ0c6XH9bflmxn1EJ3WmPNFDioIQpQTn7at7Bbf6u60r3IaMjIvSC/NNZPf4v
	Afi/yPms7FgnhDCNo5j3bKZ+M2+aRiqMHA06GUtt5M3Ctf800BPnfGOJ6LF6DG43lf19Ej9pSe3
	AdSzPivdYf6BFX4tGoK+3Ybgiw89xzAPyUzO2xyALsMe5CJgiR+D37Klw9jmpkpRe1A=
X-Received: by 2002:a05:620a:248e:b0:7c5:687f:d79d with SMTP id af79cd13be357-7c7af0e4097mr892428885a.8.1744713780382;
        Tue, 15 Apr 2025 03:43:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6rVIBI9h7lSQR79zu3PtxYcJG0tdPKZIc3OfX95srz5PTLQqSUSgpYMRtImnsYa+av4dTyA==
X-Received: by 2002:a05:620a:248e:b0:7c5:687f:d79d with SMTP id af79cd13be357-7c7af0e4097mr892427785a.8.1744713780104;
        Tue, 15 Apr 2025 03:43:00 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36ee5500dsm6352574a12.4.2025.04.15.03.42.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:42:59 -0700 (PDT)
Message-ID: <ec35c580-1d90-424c-bac8-4284901090a0@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:42:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/20] arm64: dts: qcom: sc8180x: use correct size for
 VBIF regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-8-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-8-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: q4wez2ksKeyQZDZTHLylzqtoPTUT7xAr
X-Proofpoint-ORIG-GUID: q4wez2ksKeyQZDZTHLylzqtoPTUT7xAr
X-Authority-Analysis: v=2.4 cv=Cve/cm4D c=1 sm=1 tr=0 ts=67fe3835 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=607 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150075

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

