Return-Path: <devicetree+bounces-182036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 178F9AC9E0C
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 09:43:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A5313B9A19
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 07:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 057DD19F40B;
	Sun,  1 Jun 2025 07:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hZSRj9UD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96EAF19E7D1
	for <devicetree@vger.kernel.org>; Sun,  1 Jun 2025 07:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748763803; cv=none; b=dzZw8edT8isFIqQ192slfVq1kWV5x7DaRxoIjxmjN5kMcoJXIb1Fr7iRIV3uY39SNfeTWpaueaDqZP9TZIvcOvzUpu1xKwk8hkubYAPcoJ7Zq0CS/6NC3lRYJTHxSM7rLxUopwOq1pURfdn4M7fcW0C6IfdzA6BTv41A3J6d28k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748763803; c=relaxed/simple;
	bh=mQxRcLWFsI0msDgbtMHDKTZbj0McOnFsJJhj0vNZtVo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ttV57L4phA6dGdwv4dkGccu0NWLuz4HOmSY2zKExI0dIlkSBaFzVqUPZ/xDzctwX1wogiGVXlG1HIHGVFfY35n0JtbTzky2TMdfvgWSyR2u0KndwR60acRLg6XbvjI0GH3NocL4ziJNumrl/xnl+CgOFFDsSiH9cPUQ5c+td2T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hZSRj9UD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5513qUiX032609
	for <devicetree@vger.kernel.org>; Sun, 1 Jun 2025 07:43:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jcI7oHOMxiNKOugRygvTxu0Z
	3ZaYdDHVHJGQHCgJsCw=; b=hZSRj9UDC00Rs4QKHpAOvgD32g9FXWVnzpC1TXzZ
	usegtq9RiibsytOUtB8SMsgu5cbu+Xx8rsUopkLOnKXcogKEgyYLbkaCL9NOiWbl
	h88Ea89R3aexH0ZQSP75dSgKHe5UFRT/Mm4+LUaL7efkGJNU7l2CxOIdKudDy8/G
	zIW9/2yaqH6VRuu4eQCEkQB/c7FuwZpeGIubEqXrM8w5j2ZMwRxGSWwG+I5Dkg6I
	nNnlr8DCiDaHwOdQH3SKZTf5vYSdruv4oRrHKWH71HA9GbfMLuWY8Mkj3EJBzxVV
	z2+HGH1qpwQX78TOo6RU6pQJ10QVZX741UNXKvN08GOdvQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytkr21ys-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 07:43:21 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7ceb5b5140eso612213885a.2
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 00:43:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748763800; x=1749368600;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jcI7oHOMxiNKOugRygvTxu0Z3ZaYdDHVHJGQHCgJsCw=;
        b=JuzbrGL3HuBvURsTa2Jn/Mbzh9DFdD2wgphDGBNhRvE4t6e/pzjpcx+q1sD9Kkj8y5
         H78riZHKe1kYZLnrhnxhbffOmN/ywZxXjfSSm+lhMVIqfCrOJ3cw+yqjpc5TefTd6mwV
         jihMLHv4xs6iC6uFUd5IHgegfkVgqmnFOuWD2nSULiWtJokL/NjvHE3nsXgA7q3cecPr
         V+mKQF3OOWogRHeiKewXXzF12LJtTAaLpdJoS8DwaO8ESoT3IT3uyfW6nzsvJySRBINN
         CpIpfNp88ajwBRRfJuJiv9MZgCWqZxAhNjzf+Y2tW39FQr7jg0NEbrS+gpV0FgRz+L+C
         MhSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDwyAPHVpQ8KLPDcCmHbFEPGXpSv+Y2fLntpm0qv0KnRm5jHLk5hgyKDkFUq9g5g/1MsZ1ko1vrqXY@vger.kernel.org
X-Gm-Message-State: AOJu0YzkNNaWGcafz+hP4aUq/NE+gw/DLefZ4lQWcmYIJrIFK1pUqoLz
	xpmeQ8v8Is4NmYAvZFE+FQC3IDanpmGmCBEzfezodh1qfRR1pR5Oqgx84cdIzhDmIx0WSJZESgx
	wkGLZcTzCAxc6l8llmQVhCW4jwrcrjZL3xJBVDif7NykwmaXMRYhu16aWW8r8Y5Qk
X-Gm-Gg: ASbGncvAvCvPDfj/acWpY9PagRIqtr5sHkCl8/07CiwrdidNEquRkLz7thiJvAKJJwU
	eZaWy+1zsc/3DyJzL0BOWZp3HIZK2OBtQq3VuRDTogmHnmLW3km6gP3LYiN9UTK3k9mY2mmJsiv
	fkmV+NGJB2eP0teXpzpwIo+qaDCU8DTzOa6o+2JPErhz2KxfF6gwls1tj3fYp2zC3vKwoVWtDEm
	T0UqO3+hnDYY0EYw3p09mQmP48iwhbWx1yuEilsDLjRP8jcba1RLkqXq4WyqEjFet/htlKh7eqQ
	bjL04K2fW62c95Snyvkk9qPGnPj9x86vH5bfJSP+tBoC21mbuPvkR51EfX2CNZugg9a8K04ERsU
	=
X-Received: by 2002:a05:620a:2444:b0:7d0:9c9a:e627 with SMTP id af79cd13be357-7d0a1fa317emr1251713485a.14.1748763800318;
        Sun, 01 Jun 2025 00:43:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHeYIM22xzEbjvo1mRrhKzL7+WUAL8hLkRRUmKaSO0zlkJGvV5i70ghveevJFktn7zC7JAmJA==
X-Received: by 2002:a05:620a:2444:b0:7d0:9c9a:e627 with SMTP id af79cd13be357-7d0a1fa317emr1251711885a.14.1748763799982;
        Sun, 01 Jun 2025 00:43:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5533791ce7dsm1211805e87.181.2025.06.01.00.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 00:43:19 -0700 (PDT)
Date: Sun, 1 Jun 2025 10:43:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 1/5] arm64: dts: qcom: msm8916: Add Venus OPP table
Message-ID: <ijmplzz3eqaloartncj73vyhchkgtjmysqghc56yemsqdjlnob@54xybknmunuy>
References: <20250531-topic-venus_opp_arm64-v1-0-54c6c417839f@oss.qualcomm.com>
 <20250531-topic-venus_opp_arm64-v1-1-54c6c417839f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250531-topic-venus_opp_arm64-v1-1-54c6c417839f@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: s7l39jK_il6aYphBVihM1OGgLC0sHSwp
X-Authority-Analysis: v=2.4 cv=OMMn3TaB c=1 sm=1 tr=0 ts=683c0499 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=bnwqEipTlhqVJVXZ2T8A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: s7l39jK_il6aYphBVihM1OGgLC0sHSwp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAxMDA2MSBTYWx0ZWRfX2Ou54bod33Ts
 fyLgRKizpi1b9ogFBRcAVmcE81qrCTt2gxjqIC7tuXOeSxwbCOxfiP9WUQG2R3a1qY5ebXC+Asp
 QH98dp08vtXmm+uY8lTfOqDw1k8M93CqjW6fzGYCGgtmTwzTLQ9n/VxTCy6SXyKF4/MjuQufniu
 itkDi/ZsABZ9GvtssxJplGUY1IA7CBO2ssyZjJhcfnZrJQF1fmtPdlaS5KEVaeH4VoirGq2WFmc
 v7xW6F9dksFxzV82Ym5txMngF3MZor0/iVr67zvxzV034drShkzpR2EowNiFoLn7xVdr0avIn8a
 RW/E/tjTv/sgP+FCDKfqrOEq8lRWHTfp+2LGIyJgAjByVrEAQVn1pdJuQsitbwn7UM91OaQ9XjE
 5SCqYvPd6QHRim8J2pfxJQDK+kEP1QZN7XtIi6g1mBMNZj0G2r4IY39n4Lgk1SGE/1N5Cj7s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-01_03,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=787
 malwarescore=0 adultscore=0 clxscore=1015 priorityscore=1501 mlxscore=0
 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2506010061

On Sat, May 31, 2025 at 02:27:19PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Describe the DVFS levels explicitly.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

