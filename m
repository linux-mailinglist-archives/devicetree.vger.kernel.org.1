Return-Path: <devicetree+bounces-260046-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNZeO7LueGkCuAEAu9opvQ
	(envelope-from <devicetree+bounces-260046-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:58:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6216F9814A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:58:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B852C3023535
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:58:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E39B362156;
	Tue, 27 Jan 2026 16:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pM6r0tg1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UYv/imWX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2A335FF52
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769533092; cv=none; b=cYsWAboltHjA0DDUX6qqA88NT5E7kJFaxzdPS2tEfAiss/yNdTQooOVKphDkexN0LSlXSTX+W1U6mRzN62Y0iSed3wDdxwflpxhGvBfDqqfBbTUivPAA9TU154EUX6xHWbgg1GVOWRkVDTq+nSHm+bgAUFEkhu+kIgI60DP6XzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769533092; c=relaxed/simple;
	bh=DRwMkE7727E48dTCRQYX1VLgenqEZitjWoe1wzdnaNc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SupCtF4UoZ8PExYQKg2Zi8ZGo7UTZYUV2UeQi/aeQJ7J6ZIiub/ZExwRrfGN+9nKOJvoVWJ8aljcDlmXvpCkew+mYeHlYmqUHmz9U1N5ff7TqwF+BEBdEt3FHmHyTDtdsb8BDnqb58ZtR/U43nrtOzbXN9posC+0ysSvaygY+kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pM6r0tg1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UYv/imWX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAXuDd1268864
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:58:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=H+aFFfvZAT65PIB3kGeAl3DJ
	eyXkfenz8Wt4tLFaiNU=; b=pM6r0tg15Qcw0xouUrg2erPz3aMPtIcAFrN17kBX
	/A1+3EA5y9lGeeeqBA1g7v2aFHHodOhEWp3aUhGjyg8H9sT2m8m4trs71PCzZRBY
	ZaEf09La5hm/b0GDhDPlGzX3n2+eYc5tZeb3fwL6kF5UHXluiDn4KucwhSbJan1F
	TdFHKi1R9saySQpuQ9Z2LUntTSVsBsXJGCSE9RGz8h42fbmATcF5WT1E1rrJ61tE
	e1EXPj1KRsgKpZafdIxmffqivvx+CD43PcliszbgbmRAFrKnArgDDm5LIVymygrv
	vYrFve3yDxaq7z28mQjdMoWHQbmvbkkKFjPyL7caIE8Q5w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxnyatjcn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:58:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6a5bc8c43so1677727185a.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769533088; x=1770137888; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H+aFFfvZAT65PIB3kGeAl3DJeyXkfenz8Wt4tLFaiNU=;
        b=UYv/imWX9D8zZJ1i33J0mpkoD2thlN7feL/5YwyVBL+WF0QaQe/U+76pFmEjA+WpgF
         38i0mEBPRFMGA9V0y7uXQURtx4trvkmxvetrfNLeimJQ407SyaDm2wJaEvmlh4ENia3A
         DLEg5ddVJJQi/yDGSXB5gHq/tB7ut1Ilp6CNzdTTDotNb7zAfAQ1vMD1620idVRZkh0i
         AGwfWtRQtR7ijmNC1R3k2bLO/Ar4qIqO+vQxsJPSliqJQkcRoLwyB33sQoo2kr0WhwbT
         4l7sDjto8Xwwc9IMgNhJ8wYr8dZkgqfF6o4Au9sBiSwLSyvZ5i1mUlIhPdo33imK0lWF
         eiLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769533088; x=1770137888;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H+aFFfvZAT65PIB3kGeAl3DJeyXkfenz8Wt4tLFaiNU=;
        b=F04Io5l+kvIjW2qOq1qIoBZgnoJ9YguFy8vyxVYsMWT8Q4/z+Ut9UHBcL9ejfswJhC
         CLNa/PwrJWZi/Dj2Kxp+FutXE8YWbtmhlj+D93yApmeZJsz/GCyzrSJ3ANvYTuSJY9f7
         YCvqQLBSkDUQmGhyRtRi+WJRWkRnvNzRMTjpeF1oaNCfzSYCfqqnj7nIdam65hnwimHv
         PYro81rUVFUU56uaguDt+s5IJWah/ZkgdWQ8UkxYtOrZ8+vhBt9tNkm6m8Cz+PQP7djO
         6bNPMQ0B+Bb+63LhOBCYqE1CZfATsS5NXXv7gqaZ042DIZqAh0X38ZBROeKAOnA5LmKY
         Xdmg==
X-Forwarded-Encrypted: i=1; AJvYcCVx9cQnUdS5a4ylV3BKYvigNEughkHmO/qoOUtMs63770609hVfUFFsxmc2FQ4EKbb2QaeN/hME/mPf@vger.kernel.org
X-Gm-Message-State: AOJu0YxLSsLFETbNt3cdsy6Op2yd90Cb+rh6BWISJiqAWIAX3X1yQmZf
	gBBx5mSsPutN2BUSvmZBgXfeqV6bV0UAtry4xTxT9U6dd5mMkerDJeBWdDtPn3C9d9OzW0gYARd
	4zVxpmrGxZOcQFKnc4IXA2mEdyLPTLPqCOT1PonVmibUREzMB3I/aC2mgCV/DNecL
X-Gm-Gg: AZuq6aJ4e/QhDNdh687CPn0ybW1vsJC+oNPgmJxQMNAWy6BURq8KtF/Z4WzoER9afH9
	FmtFUL9ChNv8r3OV3HhvaqwsUDeGdFdcw3AJOiXpvRe5V17pwQAklxFgh+2J6ITpX8HCUOEU30W
	/exjdpaWuv7CH/HDoymmZnurufHdDv1mbYLHYUlPbCH81iTD7nplK11rajLN1n8NlUuPXFIcSHV
	ilwfCsYrz0x5hXkbfq4un+LjJCFDIZf50NjK0C4w2fUescOz9KGJ3hJ4vwJExT1aFkSGOZuHYL4
	Ze+MdY2d/k+UUMrwMgVW6NCPfw4TbieTbP0KVlosl3E6DCCNd1EFRITQakqvJGWLHK2pd2v5Dd+
	3FsduKrne9F7U72TB8yVLgIJ/gfs8ZHShuovwAb1QE6spei6lZSoEdmCiZCUI4fN0hF6baVU2AZ
	FtEJQNe0FEOJZsE773OqYm68I=
X-Received: by 2002:a05:620a:3942:b0:8c6:af5b:d50a with SMTP id af79cd13be357-8c70b8f2f76mr281934385a.43.1769533088062;
        Tue, 27 Jan 2026 08:58:08 -0800 (PST)
X-Received: by 2002:a05:620a:3942:b0:8c6:af5b:d50a with SMTP id af79cd13be357-8c70b8f2f76mr281930485a.43.1769533087570;
        Tue, 27 Jan 2026 08:58:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625c8225bsm321201fa.18.2026.01.27.08.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 08:58:06 -0800 (PST)
Date: Tue, 27 Jan 2026 18:58:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/6] clk: qcom: rpmh: Add support for Eliza rpmh clocks
Message-ID: <giyq4toycioksypksfidvsyc7kc4p3ayjz6eqrtz6dufwtdqjk@62haln2puyl6>
References: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
 <20260127-eliza-clocks-v2-4-ccee9438b5c8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-eliza-clocks-v2-4-ccee9438b5c8@oss.qualcomm.com>
X-Proofpoint-GUID: e5j5BjUdILSuoUoc3YYNeta-V-MaPaok
X-Authority-Analysis: v=2.4 cv=JZqxbEKV c=1 sm=1 tr=0 ts=6978eea0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=QfZBNxv062MJluzyly8A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: e5j5BjUdILSuoUoc3YYNeta-V-MaPaok
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzNyBTYWx0ZWRfXyUSSwQZiPOIt
 urIo9d23k+icBFZWHOFZrju9bTnt4r+B8nrw165r2CsDcdaMgO34JSMVQlRvMD/v7DPdUc0IhQ/
 gNjDartcIqjNvQgHkpkR5kL9kStsyoHmgTX4UFjAnKdKbjIOLStOHLD/Hthhz1REMf/xlBL80ZO
 6ChtS1tc1L/eV+amZULjyfgkiAbrk25DiMr9xj7KxmIk4Hc0GawGU0jicSf7ZfQpoPrzJzuS8dW
 8yizokkRLWy9G3dcYSr+9Mg+MTqW6bjKWlZUJ7DAdwyGJarM1Oh9ZNaVdku4/cNDuEO1NWlht+x
 uGqewKPR2tLfasimy/nBkK7MOc2+lYKRN3129g3z2tR7mVBccQOqUg8ttPOQes8d5D3yiwmVivR
 m2d0ItSsUflph5KToG8a4LcvZZCPeGZQ6j3szrM0U6DCbSJTJjUuXmVrnxJd2UQfKe1i5/rpOSA
 QW/KxIuiBQA8nYpN3Ig==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270137
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260046-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6216F9814A
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 05:03:22PM +0200, Abel Vesa wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add the RPMH clocks present in Eliza SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

