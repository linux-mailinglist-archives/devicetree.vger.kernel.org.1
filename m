Return-Path: <devicetree+bounces-233187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D38A8C1FC40
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:17:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4849934E3B8
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8C112E0915;
	Thu, 30 Oct 2025 11:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Izq+r18G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N2sytSys"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484A21CAA85
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761823022; cv=none; b=DX6ns/NStnoqmV4NH98/JSzTQBJcsWE3ljlXkw7W80BEZ/malgYjlzCt1pb/OtAh883W5NE9szEwhydCHisfgyBuV/XLAuhl5qawrisV55bIp0KdAaKg6JhlrVYQNC+yIGWNduGVgBw5UnY9czTqzHnCRapOPX6DGIItubwJe9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761823022; c=relaxed/simple;
	bh=cUV8uzeWRP0SUotI+KDyFujPA5DJiZyz7o+WpMl2sVQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d53DXbhxHcdPwoix1xundAe8zKCBQidBELzSiJgpcAh6iV6DZFQEnGQv76y06YffRJxbEfd5SfzaVuGQSkGTHRMvyBN9deByGNe2ZmhHbn7hbYRzN+x6AwqG6sL4xNBOxcTVsfcuX2UFYe5U4X2QMkKoFnqmCuMfqbLG5m42IuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Izq+r18G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N2sytSys; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U7SXQk1656060
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:17:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cUV8uzeWRP0SUotI+KDyFujPA5DJiZyz7o+WpMl2sVQ=; b=Izq+r18GcliSSAPz
	F386959dlNkeodBSATcBn7FP2P2UtViG68D+vnBr5ITCwxY6IU+xGCjDq3wmapxc
	t686DH2FPF55O4C5Mn8fI4rDfxxmQsDD6RJgjaAM3m6BE4uYon21SJFggEB5jXDg
	/I7eiDTYR/syZ1P8RnBO2cX8OqzVu+T49a+yCf02wy0qCSSm7UtZKh7rVthTHlVQ
	UGYFN/wd/p/EPxdL3nKyrX8EezRbeiWYB6byhc5bc2/ijL5uUB+fJmQUUmAVKv/g
	mLlwJRzSFf05GpeNZAwhXWLeJYz66jj4wEJpQ5jw8GZART74k3Jka87fFzFxyi4r
	39ow5A==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3tptt48e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:17:00 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29085106b99so8932435ad.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 04:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761823020; x=1762427820; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cUV8uzeWRP0SUotI+KDyFujPA5DJiZyz7o+WpMl2sVQ=;
        b=N2sytSysn3zeoGKaWllFr52mzhFaw7NOCF4qlgKBjsBKRZRTbfCMS5PzGIOGEnLXKG
         2y6CfFirexRlzW0eBIzOHO7H46A84rvfx/rGuY+JL6E8S7z1WmMolgVre3qAxmxsDdTr
         oCtb8ZhXJ/AGJ9IfOZAQ9j6RKWYPxMm1/BV7BVDXtFpWz4ZimBkhC5kNrwruxelwJTHG
         /UgGTHtHPkJcRWX5guD2PDyxj1Obkktw71CzRTw/PezGyL3WLqP/CkHiU69+L3AfyvFf
         cnwj9kA39+f7k1Jn3tY7EPKJTnIvQCLUnZqsn5x3qCFoUWGRXipAEaEMqrsIpTzestjb
         CG8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761823020; x=1762427820;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cUV8uzeWRP0SUotI+KDyFujPA5DJiZyz7o+WpMl2sVQ=;
        b=TFZ+67p7FyhavcJL7ZJEjGZWDLE6RAu+1/cdvNZNaqSUgSy+lyLif7dubDWyRWEC/U
         I75K2NjREPiL6ajjnLXKVRa1O/4YVYbluPgDIkXhcsGWSBur5nZIjpchyPeJO8iDbvjA
         oQziedemkwPjTPoQt5aBkMO55osJzW/M7OY8HyY1bzZWX5V4oIno5OAeiNZBc5688X5Q
         qsRW+rC8craF8rhbYIgjMS+nc//HMlDPZWnzOQXXQFBW1y/yRTD0LY1SDpD+0iff0UaT
         CX1J5kk705D1MeDK2x0lEikJD/vPf63Sd9Br6+jSP4tubWffZjXbp54oWPnUnzELj9pU
         zX6A==
X-Forwarded-Encrypted: i=1; AJvYcCUr6lg9GUI9pkSmTt0kLKFJygtWnG9rW9Pd5VUUfhXG16l66+bjwnhAHSevuTzByWHT4wq41zGmwZzg@vger.kernel.org
X-Gm-Message-State: AOJu0YwWRym/tgEYEWBbpYhfOPmTIQvXSdeGRnMJXwm4Jup9i4smenkY
	l26wlwdvUeDXuL1mATpjpu/A+zjoENknBBadk/uZKW/lUQ7FA9lyE3H4Z1nY9WeskFcXBKGx5DU
	KZfVp+BcTK1CT3iZm0mH84Y04DV7JpAWx4JjKb4/kxTVYTYu4kIrEpvx5YyBzanmiS76DaZWu2w
	OOLdbRspsS4kDcB21Emkbz/bg4SZtzQj1DpI0ILtw=
X-Gm-Gg: ASbGncsEaDYM+Scc7tDjndeYRqiqk9VH6iYSk77/UxdqBImIAxysTYyJpnKFz5uv2Xj
	YaCvatMnphcIhXSOXbWtrwoZBGNOSLTwW/0BAxpvLU9JgxsjOVNNkvbCERNJR7OW6jABmsoyTCC
	2o03yrw2QQ7qw3cvSFTyekDqH44pGyggM3j7cShJUD+BtmnOxzSe5fDyz2
X-Received: by 2002:a17:902:d4c9:b0:269:a2bc:799f with SMTP id d9443c01a7336-294deedabd4mr76424315ad.29.1761823019677;
        Thu, 30 Oct 2025 04:16:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyj2PiaWWVAcs94c9lsei66YrD2XPRqOcqIuU4gC0Whyee3k4HoAEVnvB7AiifmV7PdSzax3Ks0pBup9CbW+4=
X-Received: by 2002:a17:902:d4c9:b0:269:a2bc:799f with SMTP id
 d9443c01a7336-294deedabd4mr76423725ad.29.1761823019109; Thu, 30 Oct 2025
 04:16:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
 <w6f3s56gx7psqgweuntqvkzrot7elhc5pdrxhvenukzwyt5eys@fndmaszfbo5k>
 <921afe20-42b1-4999-b5c4-035669dc831e@linaro.org> <32eb3b4f-b2c4-4895-8b48-ade319fd83de@oss.qualcomm.com>
In-Reply-To: <32eb3b4f-b2c4-4895-8b48-ade319fd83de@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 13:16:49 +0200
X-Gm-Features: AWmQ_bnaBZoYvF2rMafqwH_Q5lOeG9WYrBIbPgS4rloQNfolhcOEdkuO3Gd3Rcw
Message-ID: <CAO9ioeWdJpKfpu3jGyv42Mf5+02ehxyEu_Lj+Boz0NyDjPZ-CQ@mail.gmail.com>
Subject: Re: [PATCH RFC/WIP 0/4] arm64: dts: qcom: sm8750: Enable display
To: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        jesszhan0024@gmail.com, quic_rajeevny@quicinc.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Abhinav Kumar <abhinavk@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA5MiBTYWx0ZWRfX0K4oRPPONPzX
 m/W7UGLqtnaYZLNdsGvFxAbK88OFzFXQlrQjk6k77JzburhtPDP5o62VqjryJgUMXs2VOTYH+60
 4NF90bBX6vTmVwey0HeZI7qBcFW5Zu1PyfTLcrvnSmhW3PwhTlkOLhSDEZNRo0NxwHui/C2zhFq
 Q2gezpeX1xmApVLTcj6l86afC55bYhfSuWGvKxs6gUeZ2hwhfER10YQScnDjimPfZlAP/4u5qgk
 S7mqS6vQr10K8xcLGCFAd74xpqAkoDKD3N6hyAgUboMDJXLPi65xRAuDhBfm1+oU14t3UONoLMu
 oonIond9R+YLZVbpgo65mJRWrPedf5hVV3Iq+gLUFKd8AF982QBMjOXStNtmHjGdlcPPdkF+wSL
 /B4+qYwdWHqj4nUhGKiCRjJr6XJfVg==
X-Proofpoint-GUID: DTWZajm45KCtUa7LKixLJ5nx37FhUe9X
X-Authority-Analysis: v=2.4 cv=MuRfKmae c=1 sm=1 tr=0 ts=6903492c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=mj09rzKvDwJEb4rhNC4A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: DTWZajm45KCtUa7LKixLJ5nx37FhUe9X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300092

Hi Mahadevan,

On Wed, 29 Oct 2025 at 08:20, Mahadevan P <mahadevan.p@oss.qualcomm.com> wr=
ote:
>
> Hi Krzysztof,
>
> On 4/26/2025 1:24 AM, Krzysztof Kozlowski wrote:
>
> On 25/04/2025 21:34, Dmitry Baryshkov wrote:
>
> On Thu, Apr 24, 2025 at 03:04:24PM +0200, Krzysztof Kozlowski wrote:

Could you please fix your email client to _never_ send HTML emails.
You've destroyed all the quoting (quotation?) levels. Your email was
caught by the automatic mailing list filters, etc.

> We at Qualcomm are currently working on bringing up the DSI display on MT=
P. For this, I=E2=80=99ve picked the following patches on top of v6.18-rc2:
>
> All the DT changes mentioned in this series
> [PATCH v2] drm/msm/dpu: Fix adjusted mode clock check for 3d merge
> https://lore.kernel.org/all/1154f275-f934-46ae-950a-209d31463525@kernel.o=
rg/
> [PATCH v2 0/2] drm/panel: Add Novatek NT37801 panel driver
> https://lore.kernel.org/all/20250508-sm8750-display-panel-v2-0-3ca072e3d1=
fa@linaro.org/
>
> However, when testing with modetest, the panel appears blank. I wanted to=
 check if there are any additional patches already posted that I might have=
 missed and should be included.

Any errors or warnings in dmesg?

>
> Also, I=E2=80=99m curious to understand more about the DSI PHY PLL VCO ra=
te issue that Jessica had narrowed down=E2=80=94could you please share some=
 details?
>
> Lastly, I=E2=80=99d appreciate it if you could share the plan for merging=
 these changes upstream. We=E2=80=99re aiming to enable display support on =
this target as part of our program.

Please see Documentation/process/, I think it describes the process of
merging patches pretty well.

--=20
With best wishes
Dmitry

