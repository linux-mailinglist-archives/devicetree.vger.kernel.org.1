Return-Path: <devicetree+bounces-264397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +I70Gvgki2mTQQAAu9opvQ
	(envelope-from <devicetree+bounces-264397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:30:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBF511AD75
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:30:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 73122305C4AD
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97AB3329390;
	Tue, 10 Feb 2026 12:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WXJNpCgy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TPSKj3tg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C1D328B4E
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770726504; cv=none; b=upf2RmooIpYcm+Ws1SrHvEFg9nI4vacnEZQTv/9GJUJn/48TyRoryA9q9AgL7cv3R83bqDYHhcfkw+hhnTeyKAK/dL7JmvHoggvljO88klZPRF42Co6haTK2hc/sT5Io2XIfJRFPqdwavYznaUWXe7CDI5O+Jy5Q0GrLdv5y90o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770726504; c=relaxed/simple;
	bh=zxhUhNgv7CtiGH7T3I0KNBO9nYAMyN992iOeA9QvK7o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kzkRsZPGuhFSShaGh78fwT7S4lA3LYFaUaE6AJyMOCV+RGNFAb523VP1Swqpc8uiCozuXHf5Cosd8WXTIuTvj6kR/+n06E2UhBcTqVtq+/oEH3RGuCcibq790M8MLCKGF3tdCCBuzc9yXagm0Wzerja7i2C4JSzd3Jrvmn7JOSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WXJNpCgy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TPSKj3tg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A9B76C1231757
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:28:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UnhTlIxjfW62WTGpA1O6/UmB
	2s6nfZk9LsddcK1nh7k=; b=WXJNpCgykuagDnnhuTP3Gm+DwatGml2mgURUXd1G
	setFKTrBOD0fVMVYVrdSvVvIn1rQPyOB2m5q1wTyAOD54gs7XzGd6qG2SOwFnw3+
	SxmMytqxzK63DC324E2IXaW/+89CHYn2WT/mwvc5jcnaixoV1HrvKwgu6eSe4n6t
	J/J9Imguzacda/ECNoJ4qnBXnGLeYP2sQy/e3v25b5aSZuS6t3GDblNFhwb0CZpM
	ISolmqRpCouXoz2XpAoFzdocQYn10wHtPj6wCW4JpbcE+uEw6ooOu28aYZQhByVC
	zid/Dj5YUpPvX4pO5wycwFfqdiwimYyjXx/t7P7HGMSWHg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7uv59sbv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:28:22 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52d3be24cso113588985a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770726502; x=1771331302; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UnhTlIxjfW62WTGpA1O6/UmB2s6nfZk9LsddcK1nh7k=;
        b=TPSKj3tg4CwBa5o3DCsgqleyCY/1dFX+1dMpQEXI3ENt3xyMuIJdQUEozYZpNN0qsn
         ATFxnS7hC/h3ld9Kj4vWs02DFvy30QL6t0/sipwIVMVlTP32JhHhxMe6nOwUm+d4yqlB
         GzYaOmYldLXA2EkUHbZ6VMuTLcTyxwLeE2lzlkGlXemLcZ6ZDR9MCJ+qrE/Br8qnM6wk
         7tdsIOvr5dG+4Vnt9++OQDYJkbSXRhK5mXT68LnNC9D+/MmdYSBZzLVrEEXD/dvL7Xgj
         rap4eCDHelWycGWKqO/xZZb2lq0LwDpMdRtK8lErLy+H98AUslDNi7iFQ8EgUHKc8SYz
         oc6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770726502; x=1771331302;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UnhTlIxjfW62WTGpA1O6/UmB2s6nfZk9LsddcK1nh7k=;
        b=CD0EkMznlqSkw+IxnBLbH+0ySJzKv7ZlujQQ6WtBc0atzbfiNpcLlAgq5oaS2nsrJg
         r40hhv+7tJLBwRWS63pJlwlgjml1wfJ0Ra+VS0cO5wnwfzOe9LWYziSo/la2ycaJI+Pt
         qjprZXllca0Xp4pJy0AkidxQ/xtyxcjIrRdQkpnvURWM2MhHDuRpRYLNiNSLH1vq9Ucx
         Ogw52iz0Zz6ouJa0PNkjlQsO9ksq/4T5vo1vJD6UjpXKGohziI0wO1KJOCgXQkJ4JA29
         BMsBrfJknv7T0cryaWKiDmC762OrioSGZ7TTU1S8EaTKAvC3TcULrkor8j3HSA7aibUF
         9hYg==
X-Forwarded-Encrypted: i=1; AJvYcCVG9FbYyORR1rNY4Xqr6bxD5S8xNS0VK+1Yv0l4o/+2srTknVpmJqK3ENb8GIRxaRGqcPqCSq6q+0uE@vger.kernel.org
X-Gm-Message-State: AOJu0YzC0K9qNzu6qDKjpP37eB2vwugASsiovkekNwJPj0vV4S5hA89l
	h7jobBjXzM/GsRn+FNrLg7cHDYyeEnG858y74eWWUihiAfrKOxyEsP88YkxFEqvwCZrEAz6rNZ5
	K7nQClqK4r5rFHEqWrENBF3EmHsHF37f8i0efBcwOIaLBHX1JEPhupbtq9V22TCUM
X-Gm-Gg: AZuq6aJaO6wjzjnMjvudDjjJAonV4rHaDs9MX5pbJtNp9Trg8xeC2oXm0QraHZLSbZm
	8IhenPDstvTcFR11/DwDfCfypu7kytujZCw4qbdYLfGrEYABbqHnWV2RXswzFktE/ZvTWtlEy+F
	fyq3t9UY0Gm9lXl3u+08ORSnQvfgUy6gfdMOWxl8RrpJD408uhGPwthhJ6fNPCrKLC4kwtEj/ag
	Q72jmlZulX3WkRgzelKRfT8Cq0p0e3tNuITKN9brPhvUX4gUot+BjHeMPQcj4B4HISPGqFU+CMP
	3/mKxsMVEt34BRfq//9kNUZML+KRukCMVcksis+ovNrbantJo5tTZVxbzNaoLhljo53v9Wie9Ol
	gRvI/VCxgOD4dhuq8yASINR43gQzWlLrPWpMISOwi1YgIc8azku6evq2oOGQAqsKZeJuXCtuZz3
	w1hHM0cJ/JPVl+eBCAdS9CJULkw5tBKa/ekEc=
X-Received: by 2002:a05:620a:448c:b0:8c6:af59:5e1b with SMTP id af79cd13be357-8caf16ec082mr1824413485a.77.1770726501724;
        Tue, 10 Feb 2026 04:28:21 -0800 (PST)
X-Received: by 2002:a05:620a:448c:b0:8c6:af59:5e1b with SMTP id af79cd13be357-8caf16ec082mr1824409685a.77.1770726501187;
        Tue, 10 Feb 2026 04:28:21 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-386b63e8483sm34431931fa.34.2026.02.10.04.28.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 04:28:19 -0800 (PST)
Date: Tue, 10 Feb 2026 14:28:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: Re: [PATCH v5 5/5] power: supply: qcom_battmgr: Add support for
 Glymur and Kaanapali
Message-ID: <esvr4ytgtdrgjg4c47c3adnq7iowzbnoxvlhio2s43dkiuiq5t@l74rp5smkbno>
References: <20260209204915.1983997-1-anjelique.melendez@oss.qualcomm.com>
 <20260209204915.1983997-6-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209204915.1983997-6-anjelique.melendez@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEwNCBTYWx0ZWRfX48iWimPAd8G4
 egLsDQuY2ZrgGoaOJQZwknlbrNB82ZN6U5qfht9PK2ovXm6PV85WBJNNz3aP4EDQ5HekMXmrgxP
 iNY1vyr3ceyoQ+l2ut/5960c8GtfKRQI4e1VS0BHLvcKwJfxBLEorZ7rwwSQmFeHRONjkTVsIo5
 C/IH8mGFLCWrZuNZrnx5Nj8VDbMi19Y7/7gWyFO+vOd0kr+MGvQ85v9Q3NQQDSheOJo/mWV5QaQ
 Yj/0U0K72FpWNz7EEQM0FH5wP6/VMS/z4BVo/SOt25g+A8izJxf0scPF7B2N47Sy/mM6pGBtqHe
 ySiM4mbUZSNcTk5iIDlhksmxGBWhf1DygjXy/eWkmQs+u4F3IKAjOl+L3siwqSznzAiPvfmJEvN
 lAlp6QjtHoNRDKjDlLZVIa+iGzZABWREA969fzbaKd6M58JUaU8Ox5DNr3VIJZg7/Z1SCTeTvee
 76ymw48nYy8TuTlq2Dw==
X-Authority-Analysis: v=2.4 cv=P+Q3RyAu c=1 sm=1 tr=0 ts=698b2466 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=kEueVoIVdGDzn9jpcCgA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: gQ5QfBxK3JK34uObqzmNqiBfAkXeLq2z
X-Proofpoint-GUID: gQ5QfBxK3JK34uObqzmNqiBfAkXeLq2z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264397-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0CBF511AD75
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 12:49:15PM -0800, Anjelique Melendez wrote:
> Glymur is a compute platform which has the same power supply properties
> as X1E80100 and Kaanapali is a mobile platform which has the same power
> supply properties as SM8550. Add support for the Glymur and Kaanapali
> compatible strings.
> 
> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> ---
>  drivers/power/supply/qcom_battmgr.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

