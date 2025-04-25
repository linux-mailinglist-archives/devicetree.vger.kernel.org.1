Return-Path: <devicetree+bounces-171004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA6AA9CFA2
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:32:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93C847B4B11
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8878F1A0BDB;
	Fri, 25 Apr 2025 17:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EDsUZthZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACC21E871
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745602257; cv=none; b=KvHVhT/meV0Evv7IdbiJH16vxSXBsj2LrJxJCmjxxkoWxMDS7MrReYX8ND0J54timvEizRQV00PWDc9CscKyrGpp14cNk8sJhcRPlnIDvDoHVvKvrlSVw6hs9pxa8IBZbqvVYkcgswfgjYiYhezxef/aiNLDADOAUAZP1mGw2Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745602257; c=relaxed/simple;
	bh=2Y7wGlQM2yG/HX9oFJj7fpeCtYJynzOdaQ4/Ghdq82w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HHSGeD9FkS0GPfEroXFzNT6EPCADSV04O4XzrGCbUp8cxshMJ6xBVuiALeFsEHXdF8Cldko1RvkINtmFVcIpGE66F7Aod99PJ15Xs84ScqmY3TqHJRGFR/r28mck4R/VcSJMDxX4c2PYilX+jbyRoh4O6U2AynhkUx/HU+zlQJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EDsUZthZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJwZS011493
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:30:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=21WlXd5F9nKR9C8cuYQfBPNB
	+eYIpbIQPgwD66DZLf8=; b=EDsUZthZSQ9irj4dfWoZULdGU+QQhAZ92nfQIApN
	wypswh7cwS0wpr4IaswrhqHxE1P/QLNLuZ5KvvUZd5GQmOj7mPKSUsu/RWHBH3NU
	gZzukiTfeSLXmAk74tOSDRBk+7S+Ku2O1pUB69Zjr6K2lK6RCl2m+uEmO8ebRVNX
	scFfEktwMxly00fV7w/C7LUeEX394zM1PvgRnug1ovi4oPuOb9bat/mESkpU8kWV
	b8fksW9aS8U9fIblvZC5fhH0Q7AcfQsocqu3vhLmiHSacq3SA/ntI6H4oh+JNy7q
	OQpf0kDfXb5tgZ3G7vOx/efIdCqcUbVl4QrPLxwVSRludA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3ss6g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:30:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c95e424b62so242608785a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:30:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745602254; x=1746207054;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=21WlXd5F9nKR9C8cuYQfBPNB+eYIpbIQPgwD66DZLf8=;
        b=Se08sKLr+iW7NjlsLRvI/dJBM13oA0JoOTs8rX/APimyYaug+9EBOwgsf8QZAofivX
         hyhaTgcMTFfi3RyjCqNZZ0QsidgRgJCuIu/nBKulqc02YIWUxSCLhTSa/j3e4Gs0S1XG
         5Hm4rpjvyFlD6VfpMAhK3LEq+8a96S58Tr42d0j3RVLQ9/9JC080GoAhp9fnrkB1UcsK
         LJtj3V9ZLXQpNILJKMeTsU4vJ1lkKAHFMVBS4cNAi7/mXkzfAJDudqYXGW7Uaw7w1EtC
         9pUMAlZMLxjxGTlswVPfR0rLr8q6y6KMuW9QcINt0/AViJud9Z4etR1ItcuxAxpotQqE
         3GSg==
X-Forwarded-Encrypted: i=1; AJvYcCXUGSMMHvhVZGEKsdNx9V1hgfJUG/1cw21HEQw01scqdn9KQDaIB1aT+r0BnW1ogo/P3nFf62DvrQA0@vger.kernel.org
X-Gm-Message-State: AOJu0YxaVFyNHuBNA9lr+xdWjIJVaCS5b0byL7rRYnXe8ectaYxLJstn
	8XIkLjZBr9sEmUh0RFmdKHfWD9+6LuKBybKQ3fRl7HhsXnbkOMjXoOlJu6XGvHRvG2dWiAaf/JU
	Rsiufe63xebYV0QFCyjZnA5SPtHgE2r4ktQotWqjd/H0zc002oTmzB5OBrIK0
X-Gm-Gg: ASbGncut+w9zc3fmcUyQdJSaoZngs7M8LYPDmB8rCqK9hNYKZusyVG7JIZ8FQEcf0Zo
	z9fKQIALjYI+zsP5wvqlR8SuyKjw+SIaxuYa7KrCjtwfGybijPAIcHASAji0n8ZU/RfH1n5OaOI
	3/tBm4gpykgB1blrx0+vbG5EUDwTXVb5ccdwQcu0mIpvylNcyPTnCXt8vOTMjWypwJB8EmxVimW
	oFDukpAtytYwjaOZHtbNWolUEj1gEw7eqx/Vuhb6TY/OjVdfbCOvHTZgY12pEUL4P9sHBaroyIE
	YtoR8lcbmXEIr03QrkN/wVikYRchqcW939bFyHSid/j7QELgj2WnHLH9LFfASpJ/xTjiwfQkiy0
	=
X-Received: by 2002:a05:620a:4694:b0:7be:73f6:9e86 with SMTP id af79cd13be357-7c95863f7b8mr972472085a.20.1745602253962;
        Fri, 25 Apr 2025 10:30:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENeplBqCuFfk4C2SguqDeztUVPytcVD9nnZXiZ4kjuj5HHA+ECvqnxncLgGy8g+RnWX1Lq1Q==
X-Received: by 2002:a05:620a:4694:b0:7be:73f6:9e86 with SMTP id af79cd13be357-7c95863f7b8mr972469785a.20.1745602253649;
        Fri, 25 Apr 2025 10:30:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317d1b9a426sm8223461fa.109.2025.04.25.10.30.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:30:52 -0700 (PDT)
Date: Fri, 25 Apr 2025 20:30:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/11] arm64: dts: qcom: apq8096-db820c: Use q6asm
 defines for reg
Message-ID: <vjfkesae2gszpvjvgfgpctqumdxriwha6lolmmke6fzdfweuda@4fsi7i4kmepb>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
 <20250425-q6asmdai-defines-v1-1-28308e2ce7d4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-q6asmdai-defines-v1-1-28308e2ce7d4@fairphone.com>
X-Proofpoint-ORIG-GUID: 87a7n-M9wR7_vcHsZd9A9qMxibxE4kKe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyMyBTYWx0ZWRfXzTYX/4wWfZWV Eho3qGNWfXKhTOyZcLwRurst5N/tOzpSUuULl7WwtZaQqMFIQ8XnsBDTSyIPu45ODlkvQmseHmM ge/4aHYhRICjzOT4h9xUoJWPiLgD5ZwVlrkl11U6xGxCOS8xadQ+IA5/jKXT+i2ztXlu1bsZ0Vn
 8I0uvnPFLOJKY61oYPRyaeLbWfK5usgerCMLV4fcSV38Af+u61rKeXbPEwXrI5V/W9ZMEM0OIxK CnnSARmZt05zmIV/UFplUsWm65s9++gyyuWqSOa1am3jcFqIoqLUJzbqNdHKtrmtRX72NqrpDYI ILrskBVmjMxhstzdiqgiJin2xNdkQkZ59zBsWlOyQ7yiQeyXPtFNzBa7wDNVwMBQ3FfKeZCFoDo
 8nrsjmBUo8MQ7u0nJz+Q+11Z9CTMnEWmY8d4/7zXWojBTJ9jLhAX/FpK0UJ4UohhIXw5xwow
X-Authority-Analysis: v=2.4 cv=ELgG00ZC c=1 sm=1 tr=0 ts=680bc6ce cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=0uHdMyS-I8ESt-gxu3MA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 87a7n-M9wR7_vcHsZd9A9qMxibxE4kKe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 mlxlogscore=564 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250123

On Fri, Apr 25, 2025 at 01:53:40PM +0200, Luca Weiss wrote:
> Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
> readable. No functional change intended.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/apq8096-db820c.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

