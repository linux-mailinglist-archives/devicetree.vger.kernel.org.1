Return-Path: <devicetree+bounces-249384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33200CDB766
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 07:15:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF0E53037CE9
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 06:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 297FD329375;
	Wed, 24 Dec 2025 06:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EkmxE1dJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="be+yO+BA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78ED0320A04
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 06:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766556884; cv=none; b=CJUMdpAtWsK29ru4y6RPlXmPh6y7HrLkz13iYpFP5k2/cU2BNUaGuJPowR8tvNtLdmLIN8u2LoJv/PMNEZEVqUpF3Vio/5ahZpH7GBwfUbbKZQTRwkgJUPBDeR8hZBU8MuVe84a+kOF0ptqT0S8kwkgDHE9QgTH0PFW39Z+qkSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766556884; c=relaxed/simple;
	bh=PJnE1DErB7La5yMrli+gyRX3QXcDFOqGxnA5XMBXh9c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fIqs5d4InScC68/G5kwZiuA7UaUaYcXz1QrQ4A3otosm5W0FDDxKfFL/MOIbWJGzckEnLqR41/2DqfdO620i62xFZqliPZGdlpr1eDpnuCX6lJCBvf+PBW/ThNLar6GqmE29mdG69tIwj7UolsLbxCDjPh9ZtSkWemqzSe1ZA7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EkmxE1dJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=be+yO+BA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO5gHbq1018224
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 06:14:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=y4Y2eJpd01HJFBoLg61yskNy
	Rk+YHfsRYzlZDofyEvs=; b=EkmxE1dJax0sqron4lSpSGL9jF6pJr6tmmNMRWPP
	brbzcPzXYT0+CZC+phy9PCKoFll+tgH3Irb/9vKzrOnmwTzTIbG1ndXKVyQDqYcw
	FGDi1GrOIgSXnkhwNZPsxtExgbZs8fETTcZiKBGv7abQtEOLG/cYhv5AHRnTTks8
	TQ6iFbGU1wfErsptEhLY39uJTeRC9C8O+glLvIX7zOtaoXEyVeqM1uMsRxO+FHtE
	OuTcYTtarEO0MfKHvfkMo8I9v2X1AqXDU0pBOQoYzvIVaLTZRJ5GLL+xf+eqt4E2
	LVt2SXb3v77h1b8bt+nhmXL9pa7ZmTzoMBDaPXttlfFivw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjs9y6g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 06:14:41 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c1d27c65670so3217526a12.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766556880; x=1767161680; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y4Y2eJpd01HJFBoLg61yskNyRk+YHfsRYzlZDofyEvs=;
        b=be+yO+BAKhvB1dm22fuBkIjr74y6HWo6uyYWzZcZO3U3eG5NHz5FBZeMGoBMCPhiOk
         AzvOZe0V5OBPPo50tPr07g0bFH/oLe507RlzHy/YvsOMFADvjWW39mIdaTQmNRTWzJFd
         ClXVkwRIlHFPIFIpK0njvlSNgWdGGF6Y4SjPxIX8Wl9GytUPRRMRBFeFJd3tNUA8QgfX
         4foxqx4/hJx08U5sKQ6UzdMCv1oCmjSx7s86KUH1ZOgh9hVBG/D9vn9+85KL4HjD7cKB
         Qg2vo4fKz/K6wLg9oRwJzyXRZF9zAP3z1clUEKrOPy6HltZnE44dbgxNx/NQ5r37UdCt
         bWeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766556880; x=1767161680;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y4Y2eJpd01HJFBoLg61yskNyRk+YHfsRYzlZDofyEvs=;
        b=nP9dA25d0gvZu60nrTmeiC2W42wX2AmRuLVBPhhIRCqP4tUav7z5QzhAV0X9CeQTBt
         EcUrjkgX5zw8sF8g76Bz15AAuys5NDSzSOTwu3b4wjhVX+YV8IB60ThG4wLtajKcKJ9Z
         n4LFwgHDCuPlkwGEpQ8IWmQLSmwQHr0TXJ3Nq0Y0P1ske0ak9GZloA1hAewSiVDW+8we
         NR0er0cIYK0r8verxCsLdw81OaI1nLx/0Rupa64qqAr/i255Fvs2kZdp+775o9ftwiyU
         aW9Tk0tURGm4VwhG40r++uWjJwnKWigdra67ToU4OmCM+KHwiVeSf0u1rODPKnKOuDOm
         SPDA==
X-Forwarded-Encrypted: i=1; AJvYcCWsPBxuPTYQkM/9dlCqE68XUB6zdZEsXnvVbSJ6sWeeb3M15hTQfPzuRa8qi1ALefrfoeEw5OtRfy+9@vger.kernel.org
X-Gm-Message-State: AOJu0YwuK7KZovr3cB2JyiuqqA3ek6AFjT8kDlAq3csnuUXXc6sEUKcS
	+6mpqj285NLPcgHhNPJLWL5naALBYer8H6L1MYW4IISCNK77vxO6cM6LKxwGun85T8Ip6eYmYmC
	tt2kskvGybiDlIB+/9EaRPrwrSjK6L8HXLD4UDAto5EwCbbI+o5aB6IbbTLz3lP+3gD0Q09n3PH
	+hdEFfSVWG6zE3tp4Kj0bQ4BhFjd+cRN320g9QWC4=
X-Gm-Gg: AY/fxX4B+4U5mBmHyw8EI0Prbzjbu7a1HKcpwIRqkL91ZgNrnFh6FM6zI+ZZeZ0towv
	Q1vCuAIvq6HCIK6g66H98EaAOq9lHx0WR3d595aBbSJJ5/jMiwx5mIgHkh7RSodiwRukcGKRENO
	0xOsJRTmCBpqwiqLS0qhfTX3spudSde1dyu6sgtMO1WijtGcbN7I5ZsV+aqf41ZVDlmyjTeWXlY
	IDAuVci
X-Received: by 2002:a05:6a20:549d:b0:35f:84c7:4012 with SMTP id adf61e73a8af0-3769f92fca1mr15946111637.29.1766556879574;
        Tue, 23 Dec 2025 22:14:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH4JuSjzOmAsYq60WqT+iMGYoFGCeh7KItyGvZg/ifrCgKqS9atvgGzJQBVQMSMXaQOfMr1tOIJ3hW1Wqil7pA=
X-Received: by 2002:a05:6a20:549d:b0:35f:84c7:4012 with SMTP id
 adf61e73a8af0-3769f92fca1mr15946075637.29.1766556878842; Tue, 23 Dec 2025
 22:14:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-2-krishna.kurapati@oss.qualcomm.com>
 <aUqjG4pVXWN3H88N@vaman> <bb775051-8635-4e2d-a1f9-46d6f0e6bc15@kernel.org>
 <aUq51TxXwiJE2DWb@vaman> <niverh5ydbah6axshbtop56wjsoluen64anojp3nvizcn4bthr@h4yickq6gtea>
 <aUt6E-AVVVkmo6E5@vaman>
In-Reply-To: <aUt6E-AVVVkmo6E5@vaman>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 08:14:27 +0200
X-Gm-Features: AQt7F2p-49_voSHeXukQjIp0q4XfVcdPaPXZp-io6T989hQWj_PsEKJ6SPIeXbA
Message-ID: <CAO9ioeVst77YgcSZCp5p-e9V7iztnmeHhQ10TdLzDKHVZJ=zag@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
To: Vinod Koul <vkoul@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA0OCBTYWx0ZWRfX/HObSWRtrkZi
 UI8539R0zFZTS/fiEAtr0N0l8JkljI6ea9pN2rKfhZB9DExOHEDY5aPpziGJDkdGMNhBIb0w4ow
 6r1MOQIgV7BBf4Z3BAOItQPYXZSCoHfSD5wGBM1rYdvt/sqWFXyJZuW9Uv3ybFSMrhj06zsLC1R
 i/rXTeTCqFxUwTfNqB8dyKSWQBknw7vlfTcswZd860PIAVO4v+8tAIFiCUYkyiFr0UlSbbAQGmg
 zCLsc3bTt1/D486c6uoYb0gdEIpnYXiocC7ofDcdxwqq8gEEaiVaL7IqBAON35YAIk51NCfFLoz
 w6FbdkhxhxmwlnOifu9O2waQDseyDzqtsa7dAr39gMGU916S7cj76G3sCK/WA9Et2i+al3loQVX
 qKkfWZZUqEwSiP1wesR01E/snMh2hdptqjEtqEc6/AtmT9N0wWIpfiUotA+pQj5gXu2Ukp/1nt/
 hKbosUMwwXzJiSXy74w==
X-Proofpoint-ORIG-GUID: qkDnYI5JeP2KL8rakrxSUddYAZsVaYfu
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694b84d1 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=YG64nluAAAAA:20
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=itlchkg5PgSt1WyP9K8A:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-GUID: qkDnYI5JeP2KL8rakrxSUddYAZsVaYfu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240048

On Wed, 24 Dec 2025 at 07:28, Vinod Koul <vkoul@kernel.org> wrote:
>
> On 23-12-25, 21:16, Dmitry Baryshkov wrote:
> > On Tue, Dec 23, 2025 at 09:18:37PM +0530, Vinod Koul wrote:
> > > On 23-12-25, 15:16, Krzysztof Kozlowski wrote:
> > > > On 23/12/2025 15:11, Vinod Koul wrote:
> > > > > On 19-12-25, 23:01, Krishna Kurapati wrote:
> > > > >> Add squelch detect parameter update for synopsys eusb2 repeater. The
> > > > >> values (indicated in basis-points) depict a percentage change with
> > > > >> respect to the nominal value.
> > > > >>
> > > > >> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > > > >> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > > > >> ---
> > > > >>  .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
> > > > >>  1 file changed, 8 insertions(+)
> > > > >>
> > > > >> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > > > >> index 5bf0d6c9c025..f2afcf0e986a 100644
> > > > >> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > > > >> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > > > >> @@ -59,6 +59,14 @@ properties:
> > > > >>      minimum: 0
> > > > >>      maximum: 7
> > > > >>
> > > > >> +  qcom,squelch-detector-bp:
> > > > >> +    description:
> > > > >> +      This adjusts the voltage level for the threshold used to detect valid
> > > > >> +      high-speed data.
> > > > >> +    minimum: -6000
> > > > >
> > > > > 6000Volts, mV, can you please document the units?
> > > >
> > > >
> > > > Code is correct, the '-bp' is the unit here. Unless the suffix was
> > > > chosen incorrectly?
> > >
> > > I was hoping it will be commented in the description here.
> > > For my reference, what is bp and where is it documented ?
> >
> > Base points, 0.01%
>
> Thanks Dmitry, where is this documented for people who dont know

https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/property-units.yaml#L48

-- 
With best wishes
Dmitry

