Return-Path: <devicetree+bounces-214584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E643DB49BEF
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 23:29:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A37911BC6D2A
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 21:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CCAC2DE6E8;
	Mon,  8 Sep 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g8yC9GTP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0B42DC32A
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 21:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757366933; cv=none; b=dHSWCuA8PRA9YI39i4zmvSRXuqP5n8wr/6Idk3iLWtU6UrYB+FQPIC7wHXTDnbCSlDqCT2q0yhge74AOL81HNb0ehRdCYRUE33CIoFSmss5UvyVG/M1PTS6HOKxu6f+xRCqtIay5vOaSHlnl4e96+XPt6mCkNt9Xgtw3ZhbbDkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757366933; c=relaxed/simple;
	bh=+ZoPjLjiNsqFmJXpuAMJ4g8JISQ38PkgMF8oH8CfkM8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QpQUD5Ric8+KURuxUBhEdJP4URnsrbT+yCn10lYCoK4rEaHZ8BSn8yx4T+Q8mM6u77UDd2C/jxR7y2D/dj00XUftllTNbA3vVkDC17EOa5qKXxJIpApaJosWxjNls7nUzngKTidQlUy6oBavjCdAF+veJYxqr3+v2xeocHbkl5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g8yC9GTP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 588HKPJx022735
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 21:28:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ScGHARm0oECuOzEJcN01KKnFkQXnrnAhZVDiz2pnvYA=; b=g8yC9GTPjmhJQMGT
	uUOy5evnTxnRCeX/AW3qA+wqtjLA3UcDTti6WGQhYyYVP3SjtYwOjdbw/jNwvRc8
	z4J4KyuCwIf+ecjX4/jgHzZ8rq6hQi58KAhCGOACxwphsb9IpPX5J/ZG2QUGcwyZ
	ejnw2RjRXmK5PKolDX7IPGKCx8+vip63cL1N6NVPi7Wceh10oGuFGWOptdX0NYmZ
	lq3CXecrNQqcfhnrT3Dzoo5Stzy9IYRxSzbF4ZMR6tYANZ3q800QqFUX9KL+9YvG
	pjiEl1FXmL8v5UG3vosFRGGazLaW+0Vx/vF7/iyW50dUTE9QyM2BJ6VeeozwF/kP
	ZKTqNg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4kwveb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 21:28:51 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-720408622c3so103187876d6.0
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 14:28:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757366930; x=1757971730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ScGHARm0oECuOzEJcN01KKnFkQXnrnAhZVDiz2pnvYA=;
        b=VQpSSq+9Lw61XD5OVihK3t0459w2ldN0dfdai39a0qimFR7LwdGBuZMec4bCaIOhhj
         ZW6x6o3BZRTQg8iguHXAjrqhE/DMu2NO6V2rlmoC8ucpKvZsiDzOuhlzLQ/WgE0sETES
         HMu0tlKuK0szn4g/N+A/mB4riffzOOYOO1zqAq8Ah5gXUu/9oDCbhbwNkdhl03utr+e6
         EhxDo6IY7z8B8QyS7h6/8A4dUvpcDlwE1rou99G5i4tYSrOyg70yWRV8uOuKDhj5LZ1r
         IoXLNHLXyfkMoy8XfCHYAPRT1NIroN30w0i3bufSJdi7DMMAr99JHguc7InmRUyeOGz6
         UR9A==
X-Forwarded-Encrypted: i=1; AJvYcCXbvpkne2D4G4eM3oADmd7IykZDlCq/LtCEVLnxUbGVIX/ggoYGuaAb34+lzqawevvw/IGrsrCyKY8J@vger.kernel.org
X-Gm-Message-State: AOJu0YzRurmHQrcq8qi3CrhQE15SiTT9SxMueCI1kDkP+m/pHQD2nNmq
	dd5wf78HRzFaN1IQd0/Bcv/GlFaD13yytkqp87BqqmiXyGVZ3c0OJMRWfjNJ1yuZdyRpugtzG/q
	fQKIgc4E0GrIdKf+U73ZIjMY86FdAWkjDEMvdUEVnxKOE9E1ud3oLh3ihMouocEz0
X-Gm-Gg: ASbGnctIkCmBrpmRDFfP23m9yQUhDEAkS+0GwAV5ewMvwEb+683DoJr6lxsRfK4swE9
	B2FDkIyfpjk62jsIBBLVmuTewdftZbTXb1vTnLK0UvRA3WxdoJ93KWii1Evg5QtL8L8rm4ZvZfZ
	YyvQvduFyzAZ+AhloiJNK6fIzvXwlqbiHxeToVWGnzlb/3UX7ty71AwhZ9A5bb1J2pFgw3kaIid
	xN+dL+poq/bwMU+GkdM753NFXbwA4r9EEfLlyDfmRMDOYi8qQE2bU3RsA1uH9jgngZYcgK5bTgg
	wj1BQ2uBp9IaIZQdqpMQg3vLM/tWwTlIJ701GuQ0i8K1hcWnnppxX0XD8QJsyAz/WjxLJKQW2dE
	br6r687O5DJIAzZ1ohFW8pleELpVEpAHJf0eDWrpbfhOmXAPCwAK+
X-Received: by 2002:a05:6214:496:b0:70d:fec6:494a with SMTP id 6a1803df08f44-739258aab01mr109442126d6.17.1757366929654;
        Mon, 08 Sep 2025 14:28:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGFvWg9eRYub8/7m0Za7JpIIl4RD41FM6MBXJkA7gLyefolZO08FSmz7yplGf9/6bML7UCQDw==
X-Received: by 2002:a05:6214:496:b0:70d:fec6:494a with SMTP id 6a1803df08f44-739258aab01mr109441656d6.17.1757366929103;
        Mon, 08 Sep 2025 14:28:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5681795d445sm31486e87.71.2025.09.08.14.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 14:28:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v3 0/5] arm64: qcom: x1e78100-lenovo-thinkpad-t14s: add support for HDMI output
Date: Tue,  9 Sep 2025 00:28:46 +0300
Message-ID: <175736691957.998930.6661595469735181143.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfXxFid7D2XeGcs
 3/jpzoOFYsNQU8z2xf0O4mIY9l/oXq8AsTUP73sLWPBu1vLcDGN+fhgRVYbzHVi+trA+qldwss4
 YuvsJojxXqRkTH4EbKOP2sxcyz2F7N8khuSqKWNQXMsPoGtXLGxXOqbl6KDj1BJzlzSERByzAjD
 jZmZm9T7MLPK8j/7voPX1MIYvncdm1V4VrOmTuUQmX1/KUK1aSovf7Nk/eu/URM3HGB6TE42CZB
 9yMucXKAknfjWq0N+RxahgN3tin2Ockmtgwhgzpe5/WogR6VncLv88dO5vbAftx4Q89nRSljVXl
 U2ULly1JOSyw7mn5StExoD977WTW14/uQ4Nu2nemMGcxwVb3z4FIUk9TiP/qVJe60dVctVTsAg4
 /ReXf8IO
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68bf4a93 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=mli57nIQh2RWQkMICy8A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: SxwCubVk_lpG4hJeRifcJBhIoRCYTqqA
X-Proofpoint-ORIG-GUID: SxwCubVk_lpG4hJeRifcJBhIoRCYTqqA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

On Mon, 08 Sep 2025 15:04:17 +0200, Neil Armstrong wrote:
> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> connected to the third QMP Combo PHY 4 lanes.
> 
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> [...]

Applied to drm-misc-next, thanks!

[1/5] dt-bindings: display: bridge: simple: document the Realtek RTD2171 DP-to-HDMI bridge
      commit: 2c4f536c75217476baabbd557a44e8d4c3a2a23a
[2/5] drm/bridge: simple: add Realtek RTD2171 DP-to-HDMI bridge
      commit: 7156602d56e5ad689ae11e03680ab6326238b5e3

Best regards,
-- 
With best wishes
Dmitry


