Return-Path: <devicetree+bounces-260650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HvKJfSKemkE7gEAu9opvQ
	(envelope-from <devicetree+bounces-260650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:17:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18637A97C4
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 550223018743
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 22:17:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 199D8343D75;
	Wed, 28 Jan 2026 22:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nehQZQsZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VGxPux2A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38213342528
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 22:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769638638; cv=none; b=dQKOTzOqu8JbWTNRHuTrvqd6oCeSTK+bLaLJgDK5gHh07AGG4eAQ1NciI76Ov2AGN6XJ0QRWa5d+744P/ZZXPfTYzswnrwWCvTT1Uk4ex3byHIbc71qa+B1pYsMN6DO69kJNoElRsJGnPjTPKB5kHtsuvyVmkCLhukOGYbXcH2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769638638; c=relaxed/simple;
	bh=8gCm+keAh4iloPnPUPFhyZpkhcs2+S5XGOmc6PZKlAI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VYk13HiAr4hthNzf0TPgshQ7QZzU+UUCiWllr7L3jcZS169cACF3K30jsWHkxnCO1rfEfYB3aKMux1iZFAog7/KiCsBsKOiMmOED7mAD+ykozRv/uMSL/QRToDyg2oQHXpOVQ1E4/ldRl7wOn+QUL1x+/cNy1RU8zz9jt3kjZlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nehQZQsZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VGxPux2A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SIO30b2082043
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 22:17:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LiSPXLj4QSiN5MSKstEEgtaG
	EF4LVNZ0IAEy6B5hhkc=; b=nehQZQsZnUyGSoaBwALnypDTGwnULyCFAEVJuFRf
	6jncvHpjdcUcxW/5oO9KK4zmkNMCOX9UnDzX0igiPsgEjRU9+6IA7DN5vz5Kk4yw
	X9fwnYFEqwZy+aB85sp4bQI0Zh8Hy0jHQH16ms8MCbK8yuksabp2Ciw2Nq8d7CqM
	i6BFUj63gFRXi0J+igV3JQmm1/fhJOL7kaaR3dMPlkMkQgRBJFYUxOMg/7SAJ5Z+
	7YzdlyO9fH03HF/kDQqDiVGiFqnjlHerFNnifDHpOKowQmTQiKzhrvaSlc2SJ7tS
	I+8xMVDh/gYPocLxqXiEZPwFjpsOCgicnbDvJx2tbijbDg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byqpxgjsg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 22:17:15 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70ed6c849so83358585a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 14:17:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769638634; x=1770243434; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LiSPXLj4QSiN5MSKstEEgtaGEF4LVNZ0IAEy6B5hhkc=;
        b=VGxPux2AHL8JeSy13P3BUSTRQ0++nZv8y7k251rYrJzyuzgG2WSPinBy2uumMIdiY6
         U9cCXJHfgBc7We80vX4QVn+ARR5mDNIn63AMCIKqjrY/UhhszZ+Vx1h+3lxUBpwXcvg6
         XVib06UhgQJZ/GahjfeYRg3DXRB/s88DDpFDxJ6qHtJ0l/ysFPA5d3PrXVnbxxJ10lKp
         7v/qZ/3/5dKHGr/4h/YmMPkKseZ/tZCTvcx+GZsSKyN755GQXFxAJhIJt3in+iVKXp6v
         ajdfdjxUpjkQ/7lyzUBhOJWdJOnzMCSM5aZFvgwtcUzsYL2zvvHXJsPZSpXanUwEct/+
         JzAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769638634; x=1770243434;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LiSPXLj4QSiN5MSKstEEgtaGEF4LVNZ0IAEy6B5hhkc=;
        b=Wx8MLjxFp4VuEbUTUJrzy3KqMt1Mq+/hUn9/kJXOhCKsXT7LInfvFVnhSeKq5wd+6S
         /Vf101tB9T5WdkUgSfMiv5wocMgyyFnY905+NzPBSV/oiJCQ+ZbD9yKcuPs007h02IYp
         sOc55zHSeMWgy26SLUATSzusfmhSGbyjNVhHw3EQJH9EeSG1kakVr0RFc51pdb7fyIYd
         tI1iNCkGA57r+nB84jSqNccGxciwVinkcnLwtwQLO9WGxvWNGzAKGLc1AcdWJ6CLBz3t
         2XwQ4X03yEmoxmj+BVjRLKu/mu1oh+14Pe/97ZLz2U/9rE/4ORC6Uv72yUnb4wM9gKUm
         EmMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWFRh6nMtLLJ6Lb+K56402kpH5eX0YK6I6vO6SYHyTKyzDMAMobyzinIV6a1ZQoH30nnxJl8vNEyYl@vger.kernel.org
X-Gm-Message-State: AOJu0Yze5Du/1kYOtoNQcGvQCVuVO4QOIcMRRso8ZRHD0f8ZRprrp0vD
	xWivCYyDMiDEIjAsYa5aZhG8RRQXNmzMCRamA7x9wUzXqmkgeXz19yEnj83PpHlX9jBlrFofHTq
	gaNv4tFb9BdoXj1k+sR9tsQCE2UT4Y8kFXHiob8cKHBqkaBegwzU8SR0K9wvrIKuw
X-Gm-Gg: AZuq6aIV8ppaHUyc5cKVlQUIzOQE7wOESqktvyJJMau7vebjbatuUa90pj55v1ZQMJq
	pkjqvSt0eLQBiPNMqOOxpGpRqGag++K2PyHGfS+ps2E/0RgPsMvR1HuZZyuJ/8Q+mT1KVpeh3zI
	+2RjIYt4xZlqIzz14+6D0xp3hgUimAkTha/tUy9a9zAeQ9ldQ/yYpI0VgknL3C2vEZP3hvvBi2a
	cGSOlCrjl7Rca0Hc0oM7JZVq9HGtexffKeZ8wvCURMy7eHILjRgdfipcJ4YTqg5owS6W0CGcypg
	pxC495KCdABs9phN57o8/oYK3UzHP5314rRd0ZoCKVnVt5qDAOns2fV18CSr5WX9du3LFwypYwo
	HG4PMVVjLOacCnruXtAGn448YY61bdkSE8mxu5CIYmIvQ4gjJWhbHMkv0TEGfZFAlOOpf2gqsSj
	cowU/tbIqqhfGVDhLzD1fJMe4=
X-Received: by 2002:a05:620a:bcb:b0:8c6:a213:8fe0 with SMTP id af79cd13be357-8c70b860766mr819708985a.23.1769638634543;
        Wed, 28 Jan 2026 14:17:14 -0800 (PST)
X-Received: by 2002:a05:620a:bcb:b0:8c6:a213:8fe0 with SMTP id af79cd13be357-8c70b860766mr819705985a.23.1769638634131;
        Wed, 28 Jan 2026 14:17:14 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625fbd154sm5748571fa.43.2026.01.28.14.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 14:17:12 -0800 (PST)
Date: Thu, 29 Jan 2026 00:17:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: defconfig: Enable LPASS LPI pin controller
 for SM6350
Message-ID: <44ar6f64zneh5ix62mjtwycp7np4n4fpabynftrpb6yev4qshr@lopazp22g6o7>
References: <20260128-sm6350-lpi-tlmm-v1-0-36583f2a2a2a@fairphone.com>
 <20260128-sm6350-lpi-tlmm-v1-5-36583f2a2a2a@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-sm6350-lpi-tlmm-v1-5-36583f2a2a2a@fairphone.com>
X-Proofpoint-GUID: 0fzpCrE9Qd4LEInhf5pLDGSVwQP4X5Wm
X-Proofpoint-ORIG-GUID: 0fzpCrE9Qd4LEInhf5pLDGSVwQP4X5Wm
X-Authority-Analysis: v=2.4 cv=dfSNHHXe c=1 sm=1 tr=0 ts=697a8aeb cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=gLsbps8-TBLE9aXLRz8A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDE4MyBTYWx0ZWRfXy0f+8VwVuEnX
 2aIfpDGCCV8nxcyjzrmh7Z39RwKGEcB3MoQ8GNEkNYVsvGxSxVTtp6s0i1tAK6jBG7xSWb81ZUI
 4NrgrF/4hZ2dQznKPXtQpH+FVva56oBpGEf4cmjK7ZaEyzBjUHwbEVnw+qYzqmYvWAglUcTbZv9
 ofRS2NzFUuQuYAooSNY8ja3hC7ZEGQ/9sRvywOjglviuhffYZ9mwTLOfC8mMp10Vb7CbOcwPFm+
 sOdg33/nPyXv23iM619vecOBkd6GYcWte1F2/EPRjVeDBbFUDwMb92hP8a5oEIZTLdFfDc0AqkO
 GzTWABnCluT+XxMvqpX+B1i2Wu6IT/DtGqUFG6WFH3ADiQcCjYn64VUOe3KbTad1GUlg45CY80/
 GkU/VxLZGsmIQev+jOfYlVuiF13jh96myAcllBxde/PwbMzh0TOPI/FDyY0hYY2jzmBUpo795F4
 hvZcN5OPGQO2VgR8h7A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280183
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260650-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 18637A97C4
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 01:26:53PM +0100, Luca Weiss wrote:
> Build the LPASS LPI pin controller driver for SM6350 as module, which is
> required for audio functionality on boards such as the Fairphone 4.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

