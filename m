Return-Path: <devicetree+bounces-270014-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDDpMnuOpWmVDwYAu9opvQ
	(envelope-from <devicetree+bounces-270014-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:19:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 426521D9A7F
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:19:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6E4743009F01
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:15:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B8283E5590;
	Mon,  2 Mar 2026 13:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b8bQfL5D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZoIgsBQu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD613E557F
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772457312; cv=none; b=p3PG1BfguO9yUt87lLVVCJWEgWts296vI340ijsyzzJkd3YsTofFNz5C0mMAemTYy7ygxalsB/2Av58ZzkngKJMqIQ8eRgmeRDKdTZxkp5HH08lL2FmP47DGhrHiX8zw7so9LCU52ltq36KLg/RqB6VjGtsjeH18VUjdVUgtp6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772457312; c=relaxed/simple;
	bh=e1WwWEIkznvSzsiifoe2Em8u+vsqnhXV2baukWGHgwU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RD9Ut7hX8CyBXN6JcUw4391n0uH7tY8kyIF5uF1fKtxefI6cV3n8mPKltPmw7+FTAM3V+xa5WTBdP+4T3t0z3gvRo7/PyIrd4sP//JGyqBqjhJcVu5Evd6vJxK1/Dt73q0mgFxx+OZFid0yMnGDLv+77YGiTKPHSM3uxDeyUIpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b8bQfL5D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZoIgsBQu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6229JVlo3741563
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 13:15:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PM4arK3rnl1KKBaCYK+EZieq
	xuWI/d1NYN/A/QOx70o=; b=b8bQfL5DhG6NXqBL9GlUBBTKOpKHd6+7/JGdxk7c
	hBrIOAo0aqkVgVLs7NI1CZC0WZkLT+frPHsZiC22Fdo5EFiJ9h+ipnmBmXJTEZqI
	HRT9rJBjN/m3BkZAOHZsGdHbJtSR3UQnxuknLHiL89eLvja/u3j4/l9ZE12vJxgU
	dF5uyQm1P2FF+WxYH4mdGNHNIyZ/zNefD/ervcFifAcuhjpRef5G37bSOXr0Otuk
	fPeeOTiIbsnqmR4xPhc+51pYfK6aCzzFg/P5hGYeEnleD3IsUPhLxovrpyBoPsnw
	QjWqjPsBRIp8NZ+pteK/hXxJ3UAzQpDEG21/vr0bJQuEmw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7trgs1u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 13:15:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70d16d5a9so3125024985a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772457307; x=1773062107; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PM4arK3rnl1KKBaCYK+EZieqxuWI/d1NYN/A/QOx70o=;
        b=ZoIgsBQurpeUrXnFat338TjZdLb/5s4dehw2XuG/NYug1aF0jXlVa+/j80H2OFfOYx
         MqhdUsJVoaGsFCVV4TMRaRI4ZyS5yTyVrqWzmXTCNaihDAbGL6KRA8lw/9vQuwzvCRC0
         MfCneGc0736b8sfEvqPfrg5dyAoWNfTWyxwRDmCVmCzKi9tuBwDfQVxSqJq8cAVvEjOq
         ZiHWTjytNQ+RMdsKL7Gm3/fhTYd0yoyxFFxELo0qjYKzWR9VnSb/IuMsFr0t2WoHMcbp
         J3m5dhOrOPC5TJZl+zYSwEVegLeAuoVshsgWN9GCh1FNrKe8PoCap2UVJQV/y/CPpFw5
         QTvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772457307; x=1773062107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PM4arK3rnl1KKBaCYK+EZieqxuWI/d1NYN/A/QOx70o=;
        b=faCwMq0giTWLTfmEqut33/MSSUWYtZj3qOaSCpqyj25vBwwMJH5+aRSRADOBu0EjCL
         wCUt6lm6O+zFeh8Eptwq7yjhqZbiuq7ioGYE7zgfSLa6vT69w4cFaHDtshqrYgBaI0NP
         HXbqQsWflRlJxwEs35af+f2r+TJixILTu/6oebOe4zrtQPji+svcgGOz2MQn3azg3rHV
         NCYyxsJO4NHci+zG8uzHrPc1QpKOJADsnOjTqmBMdMQghAs43stAM5JuohQ9DblHKb7q
         wlkT85/25QUPigiYxyNRgHElrcR4lQ+8Dqq1zxQOhAeOihgp7outXTqh9LfIkGi/45FT
         724g==
X-Forwarded-Encrypted: i=1; AJvYcCW7DTc9OOZXzWKX07n1X57Dlrp6r1rgd3aAVYBtfXtWi44U+d4yQtIyA1tXoaq0/WQ0TcfIJFKPxvCp@vger.kernel.org
X-Gm-Message-State: AOJu0YzFVsfh+T/fANCAROQePgFHC1QrE9INVG+AJ+0sXxD/I4XztB7n
	LDCsNz/ckBbPGy49AvGlSKo8FU2uTVVuHPvz7GViWDg3cdiqwiVMOOHrRL6IMblzcE/re+710YI
	mnPbY1wZLi89G08ElXs+ZTIP/kCDprc7ApWA2P03vh3sPX8xH3BFTxs8sq0Ke64fS
X-Gm-Gg: ATEYQzyffmRrLyxMlhtE3cM+dbB/OxHV5IyS8ALwm7yreLxkgJfu4h5N/a89owDydWB
	RK3aEapaM53YuX+MKP2LqG8IuRsXMN6z/OKfigG9Jd0zJbSsovYKDhyXqGxwofilzjHNAJHdlLW
	54HNs6R9oLxKw/Df96CWchndKSRwUyu7wRAvp8J6LzIa9Vp8+cHCRZot6rNyWjKSWVlXIWJlnGe
	jV7Ufx7xAMlAo1zrDT4K5sUD4frp0uc1azpyl3y424sLVZc9++rs/WaRruA+EFsC2BBKSQAMRI+
	wYtwWZ7AHhVWd8Q2nGdimHg8wDpqn53+SVAPz2RxSKK+fHdc/oiChe+cmQuI/xduELwWCmpw82q
	b8tutxqcE6LuInp/paiPEHkpo2kli+gjeC8NmjnFIUfTlzxw43xl0gr1e+Vac4AyxaoHrxY86zr
	oymoR79aNes70sN9rTJZ2HkMboNa08E35Rssc=
X-Received: by 2002:a05:620a:390a:b0:8c6:a26b:7e92 with SMTP id af79cd13be357-8cbc8d734e5mr1536607085a.15.1772457307166;
        Mon, 02 Mar 2026 05:15:07 -0800 (PST)
X-Received: by 2002:a05:620a:390a:b0:8c6:a26b:7e92 with SMTP id af79cd13be357-8cbc8d734e5mr1536599785a.15.1772457306659;
        Mon, 02 Mar 2026 05:15:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2ffdfe5sm26831661fa.22.2026.03.02.05.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:15:06 -0800 (PST)
Date: Mon, 2 Mar 2026 15:15:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v3 2/2] dt-bindings: display: msm: Fix reg ranges for DP
 example node
Message-ID: <7b5fudcr6rgaey2a2t65qpyqkz5gsocmeh2jnvnx7dqzn7uq7i@aeeypfpsn7wg>
References: <20260302-glymur-fix-dp-bindings-reg-clocks-v3-0-8fe49ac1f556@oss.qualcomm.com>
 <20260302-glymur-fix-dp-bindings-reg-clocks-v3-2-8fe49ac1f556@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260302-glymur-fix-dp-bindings-reg-clocks-v3-2-8fe49ac1f556@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDExMiBTYWx0ZWRfX5yh2nr2TEW3/
 lkMlTjUxhY44Qannl449baP8Wseal9h62acAY1w0ruwhgbmYly2ixW8T7qSUu7scD0o1vHMzlRc
 SEwoxLuX29MuFAc+snY3EH67u7nH+LGNJQnDJfGHEl4HzDBG4cXEEi8bQQnCVkhLJT/ePMJKVES
 qMuOTDLUAV+yVscSvPpOLdcS55Ox/cVKjfqAT7CVQUFxiZxNBorVvJxsjUJ5i+Dndw7cufihy75
 zXbWqirAVdTek2D7L6v1uQCD40AK39M+UNS4w92u+QhGNdOVSQG8IG5UBWEItEtQDRTCDdNqddy
 9ni8+jySUd2B/e9LGrAxyqivS6k2YRrGlQXEfD/allppyY+hHhtIuID0Qw0QCkjy+gOAf98Mi+d
 ez5eUBUH6kZy891kjD/NIAbUjH6QyCvT+4jnfsYVn7ZK1hYO0JpttaXTyz4oh7acr7458YnUXVZ
 +3YH2nNdsRO1kORZbZg==
X-Authority-Analysis: v=2.4 cv=TNhIilla c=1 sm=1 tr=0 ts=69a58d5c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=B7jn6oKCbx1R8eWFqoQA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: H3lJiCSRknjCmjzwS61QT8JmUO0WV2Cr
X-Proofpoint-GUID: H3lJiCSRknjCmjzwS61QT8JmUO0WV2Cr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020112
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270014-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ae90000:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,af54000:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 426521D9A7F
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 11:58:36AM +0200, Abel Vesa wrote:
> Add the missing p2, p3, mst2link and mst3link register blocks to the DP
> example node. This is now necessary since the DP schema has been fixed.
> 
> While at it, use actual addresses from the first controller instead of
> made-up ones. This will align it with the description from SoC devicetree.
> 
> Cc: <stable@vger.kernel.org> # v6.19
> Fixes: 1aee577bbc60 ("dt-bindings: display: msm: Document the Glymur Mobile Display SubSystem")
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  .../bindings/display/msm/qcom,glymur-mdss.yaml           | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
> 
> -            displayport-controller@ae90000 {
> +            displayport-controller@af54000 {

Nice.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



>                  compatible = "qcom,glymur-dp";
> -                reg = <0xae90000 0x200>,
> -                      <0xae90200 0x200>,
> -                      <0xae90400 0x600>,
> -                      <0xae91000 0x400>,
> -                      <0xae91400 0x400>;
> +                reg = <0xaf54000 0x200>,

-- 
With best wishes
Dmitry

