Return-Path: <devicetree+bounces-208359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E74EAB32223
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 20:12:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 479291D2770A
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 18:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E7982BE03E;
	Fri, 22 Aug 2025 18:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jIkIhtgd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C38291C07
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 18:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755886344; cv=none; b=D07h9DwxsvXjmBKHW5S3EXTbS0i4xo51apqTV4PSj31fA2MhoUtZ0AnS1UJT4tjWitOBqTPsWjqPPyq2hEn+Mwv/Lmk7v1pz5RcGH0RjMwCZmcKV+hPbUDWAdb4xiqgoqQWA3b7mY3S3ymevD5+FSl2OwCKKy9LQ5H8/UMjRrIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755886344; c=relaxed/simple;
	bh=RAxWI0euiUT6SEQblqsBhwKkDxfsL904Z6hDWRCsopQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ludJcM46XGsIrMh+qbmj8d7s1C8a3pt/m7Eo/SVmnsYuydeTkllneUWczT/zEyhTE4Mf4Wiabdy5huuZQIfqNuWi5T1E4tYIhf9PQJ/GqsWkoV4Kek/iK3gFuY1UQnQiRKxgnsgCWMT1bEU0zluEkDto2UYackzFks9zZComQvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jIkIhtgd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57MHV95d032011
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 18:12:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/9F4kF/0PG0gqpOGPryNaB+t1E6t5FiaNAX6DsaIWBY=; b=jIkIhtgdj5s0I7Db
	TnMfmrdMghAf+6PpmRtcXHMhhLOut7gGkaK1ibTUkBVDIeBKf8d6RUWjayhKnX5h
	bCKd2EWhQ0ZEw8TUbR3xmxsuoDuyYDlZHv+3nE5y1fb73/6lQYfqCBYc8/Y+kknX
	oOEgAi7NKytojhlzZLvyKo/vxb1xZ/dTu8mBROnHUP3szxGUWlO3pLadCOXnWCLP
	Y/H6d2K8O5zwsBE/P2m7osqazaEaulLzY2VpvXE9olmN7OkdcmPfKYdAXDysVH2h
	+P8T4ECoUMgGVKoNdNn3eBJ2WgZECC2OOg9fV57FAVh3yc2yJC9E87jDJIfTIeH0
	lCuJuw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48pw10g4ah-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 18:12:21 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70ba7aa13c3so91463526d6.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:12:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755886340; x=1756491140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/9F4kF/0PG0gqpOGPryNaB+t1E6t5FiaNAX6DsaIWBY=;
        b=nmw07uapUxF1QdB1gmLSlzHZ9nMjmIw8i+r2UBbWyzPmdb+QpmoMQ2/qm7DOT4hYnx
         iA+wQLRbPJ3mFYPh4o4sY7HC+ZyLOfPvtpwEC+EZNpuKCAHypx26v+ZdheNLZvAF26q/
         +CfQTGJBzGRnP92ooccd/dk1vOI1nNbZDjEfDSPiS+eyqlwOLF6sVvhIXE7JjsIAKUv/
         MiwwPitj62XSqgqFyv0kCIzED4k9fqa+X80TjUREEDzkzbGBcXDqLth4wIk0U2uKPL7Q
         sOEQlFsrtOJMsY2M3MCNk0vz2igqbOY58Sc4cOOONElFNF31Og192KR3feo276uLqotQ
         PI2w==
X-Forwarded-Encrypted: i=1; AJvYcCVS18oQ4k9zr/lHhBg5t5VpOXQdUU9iqlz1cGr3rO+LTwZ2GDsJDPPYjoCSWNdQlHK87v2lYF+NIV//@vger.kernel.org
X-Gm-Message-State: AOJu0YxglvYwyEOm2PZ2RDK1Kdc+AZnHqnjjroUZdS8lNL4hFia6IsA+
	CixOBquiv53yMc+X61PZYOHL6b5OaIFqye0bbE6aHXggUwvGsv7QILGezIjHw1cQhHdlvmL43tY
	OgqKXdNmBtOLBbNcimOfRCgQiJmkDuhcvEDKlzgdQvXhdImE4auo8lx9avEjJ/6OH
X-Gm-Gg: ASbGncvYpP+ucHhlrS0N/Qxffaa+C2E/CxUoT8XklqMqYHOpb2ZdmLL0HrR9DqSjVsO
	HAllHtEUB2PO9SwsPX/GA6kffkiMgHLXMaLgu8Rcc2iGmeihZEuqy531NJVrSNLX3BH31oYYD5N
	4pVh5pfnhPy2n1VdtV4FMgQlzJBG/6KcBks/e3vsxnQGNKrFHmjmDrMyKj7KbzWfDZXuYHQgM2n
	5/lV/6ehZgpri+fwMu081n4jwVxdGRb/r8d0dreYzNLAVa3P8r/cyXw1iJuiGK0hW+5/PhNJkjn
	HYlvJr1X1Vi7/vTxTdPn7UjCBVNCT4o2oz3agxY8CTv/0i3RH1g1W82Veocnj9Z4wVAQ5bMt7IM
	hHecyDbfz6p6O3UNwMwmWpt/s25IYy6bRfbzRIzWU+6XTguy5y9Po
X-Received: by 2002:a05:6214:2244:b0:70d:a4bf:66ae with SMTP id 6a1803df08f44-70da4bf69c5mr19413956d6.12.1755886340124;
        Fri, 22 Aug 2025 11:12:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZ9vrMkeP87y8XS1HYbM10ipCEtP2NQ/1/i89/UBtmnM3Uakd6ZPlSGQcOg+/ENSPZGgsjeA==
X-Received: by 2002:a05:6214:2244:b0:70d:a4bf:66ae with SMTP id 6a1803df08f44-70da4bf69c5mr19413446d6.12.1755886339585;
        Fri, 22 Aug 2025 11:12:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35c01e5asm89897e87.26.2025.08.22.11.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 11:12:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: heiko@sntech.de, Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, mripard@kernel.org, naoki@radxa.com, stephen@radxa.com,
        cristian.ciocaltea@collabora.com, neil.armstrong@linaro.org,
        Laurent.pinchart@ideasonboard.com, yubing.zhang@rock-chips.com,
        krzk+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        robh@kernel.org, sebastian.reichel@collabora.com,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: (subset) [PATCH v7 00/10] Add support for RK3588 DisplayPort Controller
Date: Fri, 22 Aug 2025 21:12:16 +0300
Message-ID: <175588622226.771426.4504932000654632813.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250822063959.692098-1-andyshrk@163.com>
References: <20250822063959.692098-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: pm6BhMdlUPggC4kCZn6un0JvZ-h7-fpu
X-Proofpoint-GUID: pm6BhMdlUPggC4kCZn6un0JvZ-h7-fpu
X-Authority-Analysis: v=2.4 cv=VuwjA/2n c=1 sm=1 tr=0 ts=68a8b305 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=s8YR1HE3AAAA:8 a=u1nK3qfxStItYws1ViEA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIyMDE2MCBTYWx0ZWRfX5uLyKomk9JgO
 GEYCU6j/AgcfYfkswojD1aI5xHDSQP29aFRvvZdbL+4UmnIItwJxqTawyjGiVqFC5ritzH4o3pj
 cujZQ/nCmHR/EOHl6ofocd4mLibKTZEbC25rU0Y1BuNWKwe/Og3orFk5580jbclYN+2DasMZviG
 hYwc4GOFZouYGPJLMs0ecoZRH3VFYdCo4s+q+ehZJh3gOKpyABCzVKxpuTZ2JKGxhQjk9JBXlbZ
 s9aJxf5k6tctjPQ+rze+n6CXDBUgxQ9LI7dXN2IogzAYYL1P2Pn/m52/UXB3o5oxBfcXdkRUq6I
 8fs2DGbNMLCZg6rqpAj4hW/qRpzCIiXNiPaPwfTeMiakebpVRDLkGwJgkBRSa8hdzdt+VJ/BBHR
 UnuXMWtY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 bulkscore=0 impostorscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508220160

On Fri, 22 Aug 2025 14:39:44 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> 
> There are two DW DPTX based DisplayPort Controller on rk3588 which
> are compliant with the DisplayPort Specification Version 1.4 with
> the following features:
> 
> [...]

Applied to drm-misc-next, thanks! I will wait for a few more days to apply the
rest, maybe it gets some more R-b (especially the MAINTAINERS patch).

[05/10] dt-bindings: display: simple-bridge: Add ra620 compatible
        commit: 480a76c64f4f6a7f8d4aa2ac86cd2178687716b9
[06/10] drm/bridge: simple-bridge: Add support for radxa ra620
        commit: 73b81fcb12df1051bd169e488245f8bf4c37bc93

Best regards,
-- 
With best wishes
Dmitry


