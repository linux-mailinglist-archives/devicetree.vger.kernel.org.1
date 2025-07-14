Return-Path: <devicetree+bounces-196256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D98C7B04ADD
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 00:40:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CA741AA0012
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 22:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 729DE279DA6;
	Mon, 14 Jul 2025 22:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RAIskzLJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91408278E75
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752532826; cv=none; b=IFFGepe1GW5g4RF5MSqtwZXalL75WPt9UOAlKNu5QAQ/iTAIzDJKqsgt1alzCYYQXQnSYQdU2EQDaqsj+wXwpPGsnL+9qUdWY7hABco8buNXdgATJe3CnKy4inYeLYdSYZqOe1g9VZYkdsz0dzbkwloYlZ3H78HC+jxwrcHGXbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752532826; c=relaxed/simple;
	bh=4h5qlwpeesyHN/FRt2ZtRRGwEAs4CU5jNL3eU0tHdm4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gu544W9FJHBB5gCDQkulkUdYv/2sS3M8FU2DV8zvnQcOHpE9nkSSCEZsDbvQ7xUfpNJ46DWGoIbDCf7GzXTk7maaq6DGIjD3tC/r+zl+a6rggvh6vBGebxORpBbOy8rnJNUbL786tW6J+zecbOUMDk54bvGnFORdn7rpT1UqRbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RAIskzLJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EHNYYL026582
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:40:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yjSwbo76oRHzxnrqM3sUTeEv
	V+WSiuNA1qDRjRRLBOw=; b=RAIskzLJfeqGTk8Y5KGy1lzHZlBjDQv76CdUyhVq
	8DbTbSHio1vEHXy4ivnLB9uYSngwhb5L8VAQDAxbV+t6VvCeXRkmf4kZGE3GS1y4
	3prAq5BUDHTKDWFJ6P7rLw7CdA5TbbCDsuMCHu5qhVBIj1UAkO2LnQ4vjjLNn7na
	mNvc9G7CNirOYJZ6eauSta3ixtg3Im4CjBioKCIkkG323zDdrCMCWuQ6+CWe/UDz
	fJfMp0gOhTzDxsoPgc1CJX0Gk1iz9BgC0IjxpIziQFR6bzdDef+UTu9W1xbH2PAY
	YIDk2FIMVxjnA3u3vNeo3loYNODWHDuZJtt/h+d71GL8YA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug37x6c1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:40:22 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d444d21b24so740914985a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 15:40:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752532822; x=1753137622;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yjSwbo76oRHzxnrqM3sUTeEvV+WSiuNA1qDRjRRLBOw=;
        b=qdft+fL58hMaXkBZRfNCGYWOI85Qc+T8XYA0h7YRryv03sXfG8+vG2WzczcAnzKBnv
         TSMBwJoPoC9bPpqlgwA1z4fKyMdMN8Ne8bWyptq45KRIpAxguH7djCSOyxCacW0mJt7H
         niF62o//vcKvzONhWveo/eBUO0/eNBgdMBAb2TCgUwbN4hy2deZnT0gDvGfcdXmWRzpy
         fp+0IUJUcOr/AUuuHeoo1LlwyMh/fuzQ/0gsWmGVP+SrizAjOoHTUHgIOlTBtlmJVVtR
         2vMDlCD1pKZCPAEmORhxKg1CJX245LjNYhtK1k0bKsLWZdfaeIapMpX/KDy2LtlEayge
         J3tg==
X-Forwarded-Encrypted: i=1; AJvYcCXPLbmyrW1Ffq659hut7AmTMiriSsSv+xn8hkVUlNWk1/Yy6foPt586D5Kt2P87KiuOHJhM4zjIAXxQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzibFQQGKn2OMh0cmZUJmSp/lhbVQKPFUxwXpvgCGF5BnK2DXSo
	BnFEpgH416wLrBInfCKFaUPeqetBkcWsCJC1wC7Va94X0zcO+75dBQX07te8PoYB7Upq0ZP/msQ
	PLvSu6Ay6nFO9snzPkhiKHBo83P1MXuuwBwb+JGH1bALin/V+lj2dex012HJeTz00
X-Gm-Gg: ASbGnct38Np/Lgy9xGlRUjwYURqIKUVY57XWNK3f5aUiouxyKm5a2fXVBsSZ/UJK0DV
	knhjlHbOoA6PZbdeFv7/IW2fhRvfN/gU/BWYzn0HEK+nA59tQTFumiVfrMQ/JlaVDUlikwODw3Z
	9m9zN7rrc0NjuMvWPg4dy1SNbGWpNojUIIELIIRSm08cW+ImBycFWIVFtx4AHM0BHKiN52yZPOk
	KazESafI5TWoh+rY7UhKikJIl4aQ/9VtW+DAVrfDMla3PtDFUReXxeqEGgiRQIlEmzS2WxGOscf
	BSAQJ03J+CyJo1C/xRTnlMHFotEhEHKGwCVJwvtXkjMkr8RX2XGL3tHmFfZIpxgO96Q71Ri16kI
	Npxq845iOifLqBIvP+hx9TPPXB2n8Pb24gjmacVx6gz8F+uIvNbct
X-Received: by 2002:a05:620a:40c9:b0:7d5:d065:5473 with SMTP id af79cd13be357-7ddebc95009mr2146588885a.37.1752532821530;
        Mon, 14 Jul 2025 15:40:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHa0HRa/hfK6x/NEBmsxm/cQ5Kjrt7W4P1iVcEqAb7PlaCTrfUqNMH3CjK1pQSOrmvZybaOZw==
X-Received: by 2002:a05:620a:40c9:b0:7d5:d065:5473 with SMTP id af79cd13be357-7ddebc95009mr2146585685a.37.1752532820961;
        Mon, 14 Jul 2025 15:40:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c7ea2easm2085007e87.66.2025.07.14.15.40.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 15:40:20 -0700 (PDT)
Date: Tue, 15 Jul 2025 01:40:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shashank Maurya <quic_ssmaurya@quicinc.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs9075-iq-9075-evk: Enable Display
 Port
Message-ID: <fibzazcqx5rhdrsuz24hdasribdxllsj5cclq4pe3wd4mpqiqe@qr3fzc72wbuj>
References: <20250711-enable-iq9-dp-v1-1-6d381e105473@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250711-enable-iq9-dp-v1-1-6d381e105473@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDE1OSBTYWx0ZWRfXxB3SaTpVdGTS
 rnMnkthCbe/uBATfysxmQ/mqEU4csRwh+sKrTq1GgytYwYkQ9oko6NTQEYbY6o9kayKATWV+Vql
 mk7BkXfHTC2HswZS31ZXK2FQTG0J+eB0dY05zBJ0Pd4Q9DFwcOiJid47Bntjqbe1/pkTuMhIOuN
 1hwH2xYZ1EueaKmSFPv6aPyGPA/3L0pFP/O4AayK8TkCKQ6lN5XWwbM4ByfXzVKCpiNX49rycEF
 kb1brrbegpjSbR6pPgOFBzmYAE18BNanYqQ/5nN3xh+pwZglb+N/4Gamo4gHT1EnTQKSXoTuvjA
 O2HQWdJlZUu0iDjQPWePX5UKyM0t8AU2MxeDV6nHtNftPiHcMYrb/DjCmjFJpZUQLya8o6pGOFk
 W0qqvofZ1j2uZrxK9HhTdF28xSy8eWLVVnCPz0OQej24AZ+zt26k1jrqChthhB+RCfjzjru4
X-Proofpoint-GUID: KEuoTk2R1-0CrYGWaYbv7rK_fpjGX90w
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=68758756 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=QGU9b-9ATRnlJsYRrdYA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: KEuoTk2R1-0CrYGWaYbv7rK_fpjGX90w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_02,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=808 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140159

On Fri, Jul 11, 2025 at 09:13:47PM +0530, Prahlad Valluru wrote:
> From: Shashank Maurya <quic_ssmaurya@quicinc.com>
> 
> Enable DPTX0 and DPTX1 along with their corresponding PHYs for
> qcs9075-iq-9075-evk platform.

Please add corresponding dp-connector devices.

> 
> Signed-off-by: Shashank Maurya <quic_ssmaurya@quicinc.com>
> Signed-off-by: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts | 52 ++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
-- 
With best wishes
Dmitry

