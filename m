Return-Path: <devicetree+bounces-277348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAvhLL7Humm6bwIAu9opvQ
	(envelope-from <devicetree+bounces-277348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:41:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1AB2BE745
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:41:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 69EC6300E589
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1611C3D3498;
	Wed, 18 Mar 2026 15:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cTy/Y/PI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kM+b9o5F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E6983BED15
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773848406; cv=none; b=C5sRYiK+PCiprmpGqT20N2KdrHP58waGe/77HL0sR0EoRJK06ZHUhnXTRBAKneWuXCd4JmtsBsTbVPH1ha3haHffC5H7N3Wz3Fq2GbNd24zkhBMZvyKYTGD7TRyZr9cMGqFoDI+2OJwEW0Uk6YBmPDuW+jkwWZDLzxOa1bRt+1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773848406; c=relaxed/simple;
	bh=kXgPJubBBRMEAM7a00iwPDTnwE1WqVUydbhsabJSVBc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Dt3nwsr74iyOR32fgA+kwWUXNwsTzf8zIvnS5TgYdNF5rH15on6sC7sPhUUY3uz3KO6xG5qF6kDNu5HTy30cfjPpAYVGn4k1rdivmHCBUpxKsBBrgyGQl+1ImNbsJZsZsfYBM28M0XsZTdK7GA1YJUdNnBiB93+5oKQHEO/DrEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cTy/Y/PI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kM+b9o5F; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IFXC0U1768879
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:40:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BIqoWgKmQyuYPfu/JHLpVodU4oDvKEbNfgj2XsNto0Q=; b=cTy/Y/PIlh+7bFqp
	FIrmo1qZ5qEsUdB2VmJnBdLzD2kLOJezYsUbkX/37bz2+iVUflOtSOBLHSiF48Sk
	sfB3BPxYNHezc90psZCgTpQzxFCwLdntTZ781JRv7KeZkPxzg9VV3bZSDB4P1Qy0
	k9291c1Q3Ziu6nBnH/Z7faQQYRJA+1GtXidiB2a2Deyf9PDJPw9T+dgAtgj8WbQ3
	2wg8CgOjOPbODF6G76wlv3yWiz8CjOOTrGHEhWu4p5UAK+dw4O4LVDyFKihVpC9V
	pJEwKdemRfCRqzqitNQ7C1PzZ+k+y0hGfugCKmnYs0XwcbcmzOtPA3srenURuuym
	ek4cLQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cykqetx4n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:40:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5094741c1c1so24874041cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773848399; x=1774453199; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BIqoWgKmQyuYPfu/JHLpVodU4oDvKEbNfgj2XsNto0Q=;
        b=kM+b9o5FjiVpNBT8dUHTcb96KfJkCH8T3uRXrQuDGMSjzjP4EprSh7ZwAxtmKjZJ1n
         TsvckOqIdBz0Rjb+3YepLkQGoFLO4xSMbOhBehLuxqBTQEGZv85MtYnJh6Ux8k8R7XDO
         dnGluxze0pujRC4V00iWlhsXyA11clRwkq7KbBhZdn8cbCYROAxQBxqqz8t7nPO4TBZt
         sXu3gvjKItrx7zIoAxfgKiQdqJSu8dQvmt0U/NydVZbv+dL9LPwdICwjhdsM3kF3/kCr
         dHu26X64jHixAXzS2g1gR6i66C4L7hrM2KJXGVm+Q7ECV8wmr0MsWueuvfAfsldqBqBw
         LIKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773848399; x=1774453199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BIqoWgKmQyuYPfu/JHLpVodU4oDvKEbNfgj2XsNto0Q=;
        b=ImZMvxZTrh+9Gzb5cQYr1hf4fQuDBsoRvmgZPy2JegKOlGnV7mc7FYU+Ni76n6Njzh
         UXhiGMFLwQbHlH0CjAvE6+EYiN78p5SR+FzCX8SKBFmX8JqqLeJEM2nXy/nxYOWaTNWD
         i3/E51zu19lBMOSGNuUk8Z7Lb1jJMkWLnXK/nUd9nwYvL98z8V2tIUxUczRmpZo4Eqex
         cyzQpUPN3NiZ0u1yQyeMFp7L8xZgbNg6OIb/ce9Q8lvu45LBLref9d5q1Y9D4YvztHO2
         hbZT1OF5Gr1loANW9VI2c/Oolf3M27/Mr+029kRFFpNXSIN8wjPt0Q0FLQ7aDtc3/COA
         RKNw==
X-Forwarded-Encrypted: i=1; AJvYcCXtC2GpMvukk0j6l0A75VlowbZHDgh/WjSEuUxUkDtxad6jaK0CiMLYWbloSDHUaBnj0WKN3o6pHS40@vger.kernel.org
X-Gm-Message-State: AOJu0YxMTzIa/pmkd3Uxh5nD67gtHyMzcEqD9GmFnuj0iEjMFmaMtfV1
	GufoXmLSOhxkMJAlUqHYP2Pdj9FUQas7+LT3AQ1v00i0kXCGBwi/DoYBottwSFX/hNDTHCxoNZ2
	zLT7RYxmeVVrY8B+dAlhuoeGC+oLTpSaI8u4Ace43WivQjmZCxUZhVckCZoGNK0gP
X-Gm-Gg: ATEYQzycdDbmyjCBrGcv0rEvOHarz6pdUiKvXowc/Rnmjm3+ri2+pvUMgLWuYgRbRI0
	rebfnnZ5SwMW69Q1/7JPABUttqMco1Bi9q0LeJCOvDK444oPljt9adIzvqUCO1wI5F8OD4PmSiD
	4zth/xd4LRGP0BS6hgl/7rlgVS5/9ujl2nAAtws8zyc/5c15lUA+OIvkeoSOOiyzg1BCFkCPHsH
	4EgajcQVoEYe86Yv/rHMI6fe5StYO4YG89ilo8zbiQSRQx6T7JtGtTWFVnfEyKbogZValG1mjj/
	iJ/m0FQZdyb76i7dLIwmDcEf7i4aJWjAaoVewyHR6ay1OnaHvwRgboxPb02zo1HFc3mR6hbh5r6
	sm76+E8r032iHPyMSAjiTNjMOyYU=
X-Received: by 2002:ac8:5f8b:0:b0:509:3367:c992 with SMTP id d75a77b69052e-50b1477d2b1mr49860091cf.5.1773848399264;
        Wed, 18 Mar 2026 08:39:59 -0700 (PDT)
X-Received: by 2002:ac8:5f8b:0:b0:509:3367:c992 with SMTP id d75a77b69052e-50b1477d2b1mr49859731cf.5.1773848398744;
        Wed, 18 Mar 2026 08:39:58 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51892161sm9227560f8f.21.2026.03.18.08.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:39:57 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Lukasz Majewski <lukma@nabladev.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 0/4] clk: vf610: Add clocks to support MTIP L2 switch
Date: Wed, 18 Mar 2026 17:39:33 +0200
Message-ID: <177384710706.3709943.4851926053225673193.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260129095442.1646748-1-lukma@nabladev.com>
References: <20260129095442.1646748-1-lukma@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEzMiBTYWx0ZWRfX4/7WvpqWNUPc
 1zNF5jptxu+ljlOuUE2bRAM49fIYFj0GyIW8F00JmZWtmGmS+geIRgkDq441R+oj4y1wiF3myqP
 TIPRxwfSVDTp9DhGDjGUDO9RcM5x3iRhCq12SU2ckF5iZuBEFGz29gnHdiHPfOuEwYynC2T+ceK
 rpTwippIaF87+t3OtlDKsY56K/fm7CEpbjplCoyhdLNGns+6zYFeY95qEY2cZENWYBkHmxk9SRc
 392rqUOT18aeddhctu2eMfA4D1Ag3ldgkqjXIlO0y/W/kVcLT+6CspPhke5gW0laxph+vX832YR
 Z2oqtzXzkyxF8QMlWOHH6w0Xwi4KxqCd63l+bUDpdwS75dsu4rXFCOpCo7MzFfEcI4GL3llBcBE
 cUW3KQjHIfSYO2KqS8Mr1UhgnOFtR5v6q06ROwvoLpMyZgqK3GWSmue6S7g5u36X5HwQfSKXVjO
 6XIE4oF0VDRxN9gSa5Q==
X-Authority-Analysis: v=2.4 cv=Cd4FJbrl c=1 sm=1 tr=0 ts=69bac750 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=15QbF078PdIEimGHe8kA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: Qv_ZvuR31ScyZpuh1nBRCZ61icw4FY4U
X-Proofpoint-GUID: Qv_ZvuR31ScyZpuh1nBRCZ61icw4FY4U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180132
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-277348-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5B1AB2BE745
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Thu, 29 Jan 2026 10:54:38 +0100, Lukasz Majewski wrote:
> This patch series:
> - cleans up clocks' setup on vf610 by moving VF610_CLK_END define
>   to driver code
> - introduces support for several clocks required by MTIP switch IP block
> 
> Lukasz Majewski (4):
>   clk: vf610: Move VF610_CLK_END define to clk-vf610 driver
>   dt-bindings: clock: vf610: Drop VF610_CLK_END define
>   dt-bindings: clock: vf610: Add definitions for MTIP L2 switch
>   clk: vf610: Add support for the Ethernet switch clocks
> 
> [...]

Applied, thanks!

[1/4] clk: vf610: Move VF610_CLK_END define to clk-vf610 driver
      commit: 2c53aa5878f9abe6975ca45591b8e3357794c0e4
[2/4] dt-bindings: clock: vf610: Drop VF610_CLK_END define
      commit: 216ad764f8d8c53b85cc74f6090f8d132772fec4
[3/4] dt-bindings: clock: vf610: Add definitions for MTIP L2 switch
      commit: 819bfc68251484bb9ba4b6cf91279a80c0fd7047
[4/4] clk: vf610: Add support for the Ethernet switch clocks
      commit: 5567730bd36614d8099d73520760c298e80e0fc5

Best regards,
-- 
Abel Vesa <abel.vesa@oss.qualcomm.com>

