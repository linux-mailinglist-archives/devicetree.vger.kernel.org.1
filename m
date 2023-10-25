Return-Path: <devicetree+bounces-11519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 002E17D60F6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 06:49:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 302BE1C204F5
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 04:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E392A2D637;
	Wed, 25 Oct 2023 04:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=public-files.de header.i=frank-w@public-files.de header.b="jYwS87Hq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C333F80F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:49:21 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CB079D;
	Tue, 24 Oct 2023 21:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=public-files.de;
	s=s31663417; t=1698209341; x=1698814141; i=frank-w@public-files.de;
	bh=wst+kn2LJYE18zgEoPvRJYkwsFDsuiJJ8r3xjJMaiIk=;
	h=X-UI-Sender-Class:Date:From:To:CC:Subject:Reply-to:In-Reply-To:
	 References;
	b=jYwS87Hql4nMv0v2E/Wuzs+1tfhcOZCWYLk/Wqvr/BX0ejFKt5isDFzsZmBZr//R
	 M4HYLcpjsJYixXzXNn9fkJvddQF36cYjPfUJKWvYryYF4NhqgzCgbvEZ38zT8LfbW
	 uEBxDktGRejtFh8DFC6m7xcK5u0DbEmsOZNVpF5cPBrJfG/Jmjf7bhBLfJDaH1Oqu
	 ++7s/Ke47N8k87ao2VxmXsYcEUy1tSGGCPF0O3Nbp4zLBvMYBYgKHk1+L+XvQZLcB
	 yMU8NDha14YH3FOuos9V3PfBYlcqMj7ZRhmPNsePn77IXcL3lr0Ya9FlnbxWh6ycK
	 YF802y93pSa8ky44dA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [127.0.0.1] ([217.61.159.50]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MTiU3-1r3ZuT40pp-00Tzz8; Wed, 25
 Oct 2023 06:49:01 +0200
Date: Wed, 25 Oct 2023 06:48:59 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 =?ISO-8859-1?Q?N=EDcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>,
 =?ISO-8859-1?Q?Bernhard_Rosenkr=E4nzer?= <bero@baylibre.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v2 0/7] Add a few mt8183 follower boards.
User-Agent: K-9 Mail for Android
Reply-to: frank-w@public-files.de
In-Reply-To: <20231024212618.1079676-1-hsinyi@chromium.org>
References: <20231024212618.1079676-1-hsinyi@chromium.org>
Message-ID: <65CEE82D-B1A8-4153-AB21-9E0CE224896B@public-files.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:oicm5nJbPPy7E+3I1ex1Tbt4DJFzwklgPahjOUY4DjfDKavv/p7
 T4lrLmi/kJQfHhSetihtGYZm4b9TzihuHHWjZRwU6W/vsc/8YB6fA4uwRA4C9GOydkQfE/x
 XmsoFrF/r1MoxktB89aeHPFR9ZzWbFgty+hAK/vmktW6DzMYMvxQ4mTZ/TOtDW18pT+tLDh
 A7R4xgeK21B6LEW4Lthjw==
UI-OutboundReport: notjunk:1;M01:P0:W40FPAuZuGQ=;v3CRKu6xe2CRwPI755dKmF1T7r5
 /MUWHUERNsQpnqfGirETHRXgLwVDrHx7UmKtb5VILcuoQBnOhzp+a3UczpVO57YmTISvUWSAJ
 wQ8NhLp+Bb1cpr5knL5XcTSXUDM+7gcKO+SJ9AKUHv7N3012G3bUc8R41TAKlbnznEs64Vajj
 Q/feNEgNlYLPkuDRxJ2pSJyNFizQtMT4SH8lIha8wwuw2s6088enNT4TTFgn4w3faM9IcYTI7
 BdTan8VzkO5X/46t8Roi80Gj14bESOqQ114s+Runi/e16JkzgcdkcD3c0ubvhrbkvt9v3lyf1
 BjlXLXoQUqDwueaLpngMqIdMAdfdKsfGnVhXQoAWFyQGQo4OIGgMIBT5MrOj9fmu7I2si+TiP
 W0+I8kEGzkbZw2htPeWP3+0VZKbWkPN05zFse7kRz6lhSLNsNydPBXvr5svveWP1oyDmLUu7D
 RL1x2b82//i/iBOFhqKWoqREJn5UStwa2sZ0RWFJyLqPbjW7jyRvvke54nCp+bmaLoZfvCk79
 zMeGX9Vw6I1pN1eeGXX59T8444KWB07DgZ2iqXZwsIPM11ERirloOJL5kmqwWbk2+tpbCqcHU
 nOy4+MN1YCVluKv/r9/aP5JLBvSJP+zKl4mZ9lI67ep7nBJvl0GJrXDYzuv1HZW0KD2q+eQJ+
 FvGbJil5O8HqSWj/HRiG0DnvcHthQv/JS5Yw3qYYOW6QsYl3m0tK+50tVBcqGLdeZEMtJ9I3j
 6p994stt/b5CYuC54QvIiVFi7r0eQJszOHDktK5QsOO4I3XwSlz+EDNFHAaGk3xva3JIZO/xX
 3dQ8AP9oPmhGhrFdWB5J3UurFR83S1MFwiY8Lp2JWpZuZQ86KL4cd6phwplh6Z/m5umPYkoP+
 AmwU3eo9hZxA8Q7BbuzP7qp7OtUIKgWOPsFtza+iOo6Y/7G/t2SXCDWnu666Mtq07VF0EVnSr
 IquFIg==

Hi

Please do not add me directly as i'm no maintainer and i do not have board=
s with this SoC

regards Frank

