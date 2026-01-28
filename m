Return-Path: <devicetree+bounces-260237-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIErCAXJeWkezgEAu9opvQ
	(envelope-from <devicetree+bounces-260237-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:29:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0349E356
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:29:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D03C13000B84
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B532B329C40;
	Wed, 28 Jan 2026 08:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ijJsNH6z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dpeq6P7r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5FE3382D2
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769588992; cv=none; b=p+OaTY9jTuRXuBbV9uHde2F5+d8oLcdazfLNAB0KXLnBUsbJRdMi2OeQt2KMdUW4yDCQdYf2q1rrEglHhZH+Kh9PqCAjB7kpuB8RvlySQzrajizB/16sHD6ZaORaCkNBlq1yd3SBeWjelJlbPbcqzHj0PV/BKXDHdyb76rCFfaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769588992; c=relaxed/simple;
	bh=8kZgYaAlkl/h1w1MGl7VJjU+Bx8m8zxofiPfxjhWw0E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cXAMYWvu2PiPBqFdoLHnrllbKAtPNDhkVZndyF+WhPi7yl7Ma9OS3PnmUT9esDUA0JX9LYoc9qW34vt7caWcO905vLiYv4NeZ1/j+pWLmjRhHlRGOxy1w2MfoNH0IKeMLzrunxpMMmtgDqnpQFrG4wp1rapyQVXhSFffRiiNukg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ijJsNH6z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dpeq6P7r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S69rJh4002320
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:29:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Nzv7c6kvGUZdBK3n7VKc/9sX
	RlAmfRKLcFkj+4/hEos=; b=ijJsNH6zguxXs7RYryVsukEQsCO6rhn1rll7+nv+
	FHQvRdvbCiuZYo/5onbq2fB7FW8UMYUas+8BDx/w7aDc41jXqBaiMTeSEEMhgOFK
	YtzCRZDU3k03HKn22S3J3+DVxATzp9AQHRRykx/a6A+WjGi7Sd/ISKDRVhDDCbii
	WhS56lIyIdS/gFitr4/Iql2kqNIOW3LIOMKBmQUTV09nEPxf/iuqj4ItseeQBwOD
	3IVIHLuLubkXE/f6SI/8WwGpRIkIByVSOWwRRenMuxSusjT0iJZFHs7OKP6XaE5w
	styJLEkOJ3CtULtLyuTFYoKBIjsbj944gjO0qdFdilhI5w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by4dysy0k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:29:50 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6ae763d03so679541885a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769588989; x=1770193789; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Nzv7c6kvGUZdBK3n7VKc/9sXRlAmfRKLcFkj+4/hEos=;
        b=dpeq6P7r9917KQgaF4X4xWJgiGrUEUCbccHuXjNw5K6Kguw7P/1s8TjKuTeWRUzbmI
         VUk4kJ+DUG8Qhhiq8XojNHNLbidJ6yH540u/mRnQEn/yB5XHXln6ppJpAf8CMmqkAMNb
         oANsWTcePZr2CsTWOYQIsB5Ko/8ArkkBLueznmYEgMQkbVU2+aJRFEyMdBc3db13Qc6b
         q8MMissg2SczP0QAUm7p2ndJA7J3La1SmXdkD7HQf9vzavdiEWb9R1q2RUKXpcDYInqi
         AU6XFcred56fKzY9T7lLzrbXWVVdAgtH5/+U8k3WSn/i+Wwz1llo1aFyRj3q+Qp3Z/gf
         tsxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769588989; x=1770193789;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nzv7c6kvGUZdBK3n7VKc/9sXRlAmfRKLcFkj+4/hEos=;
        b=pXaTeJrjdygSU3eAwxSd62GluOZX+67rBZBwgVosk9kUgqXdEjzBduPBBN+X5MM+0q
         cDsVI4cyToVoCJOIzTBYvUznFigpNEptrNeE7FdLwkSPf5QbaDKEPRXw/lIeLl88IO8C
         ElnQ6+AQgJMVnf+xVpDH0nH1fq6+lmpmhfq66W7mDViCuLKurl2O2pYmJ+lzJUsa5BVV
         OTqJXXBLgfJoGd0Ufq67MCgK5VVH2hkvO28yFTAZCBNy+DvPBNLhWM2OdHx6ENJTAyGp
         xJh+mDNOeNlG/jpMN5cqgCjRzNyyODg0xq1wliZ5B8Ky+QoqzBiPQiZL9xcqAnjjFL4D
         xmLA==
X-Forwarded-Encrypted: i=1; AJvYcCUj0SBGU/v3OFQXf7WQJHEFt7p9X50E0Uw3X5Fh/0WA0H/+Z2BEZ+7fZEOZL/fXYEEF/277IdjMsFh/@vger.kernel.org
X-Gm-Message-State: AOJu0YwcaJK2SM1YdDyYbp67rqQmL9kU8+fvHzaiwCgydtJnK6/fK2LA
	He502RaDffYHkv/1qz8UBETdvVptIY+mtZpLXSsv5CmBV4EgNnCVYt65wCN9JJHFtgFXV5k+o2P
	wC0kWzzznHLWlcoLLl6xgArkkA69xxmWLcBV1UUoYD972828XGyMnRBC0S//gGasG
X-Gm-Gg: AZuq6aImX1SgixbpJcEsYZP8DnHdU4ywxQWqmteXjQyRV+0DhCWkj/pOx+JXS4fS/vo
	7jAfKU6iHQ/PDdRCOemCevJI9wk+jLE5+r1zzwdc5jjGRtJn2EZlVg/pXJhOO2tuRM1jpxAbRzv
	fcqi8ndQ/E+eaZ3CERP+jkIuGazx70i0SAdgPqqmoMf+aX+y1PCwr70A/B/wthLLD+dXoyMLhv7
	AB6yLmLKRCkjcVXxnu9UIwl3vf1mzW2BJWi4FWAKGI4sYF4TdDCWOgR7d0uc9l5pUSOJrkcPgU0
	THXknW9g4d3YcEr9yqQI8vutn/nif1LDpKVNHC+sSfqjxuk1h78aCD4GJtA8MlPtUwA+e0lBvZL
	aGYZea15hqRn3hqvcS4STQLIj
X-Received: by 2002:a05:620a:2913:b0:8c6:d628:8bac with SMTP id af79cd13be357-8c70b90e85cmr533025785a.73.1769588988999;
        Wed, 28 Jan 2026 00:29:48 -0800 (PST)
X-Received: by 2002:a05:620a:2913:b0:8c6:d628:8bac with SMTP id af79cd13be357-8c70b90e85cmr533023385a.73.1769588988507;
        Wed, 28 Jan 2026 00:29:48 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806d984b20sm3812025e9.2.2026.01.28.00.29.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:29:47 -0800 (PST)
Date: Wed, 28 Jan 2026 10:29:46 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 07/10] arm64: dts: qcom: kaanapali-qrd: Enable ADSP
 and CDSP
Message-ID: <mbtwkvj2bvfvph7r643dcojpvm2ylxvk6d33nxa3tfihkgmwc4@y6ti2e3oh3pu>
References: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
 <20260127-knp-dts-misc-v4-7-02723207a450@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-knp-dts-misc-v4-7-02723207a450@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=XqT3+FF9 c=1 sm=1 tr=0 ts=6979c8fe cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MrUaPYo4nwMKqt2SmwMA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: NbAIPbOuZyZj-Y2-RaD5uqTc_H2Bu0h4
X-Proofpoint-ORIG-GUID: NbAIPbOuZyZj-Y2-RaD5uqTc_H2Bu0h4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA2OCBTYWx0ZWRfX9wUAAYcK/2gE
 quAg7XPipEFT5VQUSi5MCrLWSU8kDMtTV5gjoVi5rImna4IbUyTQEr6obxmssv/D0QkFO0awCb5
 iMrDfm2KUJJ8zWbcrJHkg0PDcO7/qG1o8PJ5JzQamLqqRL0eEPKovKPXDRlm9LQg5xwVdIjW33p
 LlOWfvd2cWwCUGpMoCFhYCNLSukAUaIKRir/EQG5ANGwaXNLNXtdGD8eJhVZP2XnsEz8TTLIhkc
 amc2xe717FfsnNWX7OFr+BOUpZJcoRsE/AoGpw/fRmNJhH84SoGadtc3aKIFxiDLC7z/BI93yDw
 q/L+aDeZ7ZyWNhBP7D7L6hvDFlxffPa5SFBxr/amSf2V7LvUKTQBYfZZhcLULf7xSJ1vfKwEi1F
 B2LuGnI45SqJIVEIr0C8U8RGAy530GoA0zujBuuIN8t2KZLONz9iprrHU/lJpI3y7Yps/fXXsuP
 1AUMFJstMTBkB0BlTHg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260237-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4E0349E356
X-Rspamd-Action: no action

On 26-01-27 00:34:04, Jingyi Wang wrote:
> Enable ADSP and CDSP on Kaanapali QRD board.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

